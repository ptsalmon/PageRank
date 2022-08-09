#include <iostream>
#include <iomanip>
#include <vector>
#include <map>
#include <unordered_map>
#include <unordered_set>
#include <cstring>

using namespace std;

class Graph {
private:
    // graph implementation
    unordered_map<int,pair<unordered_set<int>,double>> graph;
public:
    // inserts edge between from and to vertices
    void insertEdge(int from, int to) {
        graph[from].first.insert(to);
        graph[from].second = 1.0/(graph[from].first.size());
        if (!graph.count(to)) graph[to] = make_pair(unordered_set<int>(),0);
    }

    // calculates and prints power iteration
    void printPowerIteration (int p, int v, map<string,int> mapper) {
        // create two vectors to store r vectors for multiplication
        vector<double> r(v,(1.0/v));
        vector<double> rNext(v,0);

        for (int j=0; j<p-1; j++) {
            // for every vertex's adjacency list:
            // iterate through the list and multiply the previous r entry
            // by the weight of the edge and add to corresponding entry in rNext
            for (int i=0; i<v; i++) {
                unordered_set<int> row = graph[i].first;
                double weight = graph[i].second;
                for (auto iter = row.begin(); iter != row.end(); iter++) {
                    rNext[*iter] += r[i]*weight;
                }
            }
            r = rNext;
            rNext.assign(v,0); //reset rNext
        }

        // print every vertex stored in the mapper and its corresponding
        // weight stored in r
        cout << fixed << showpoint << setprecision(2);
        for (auto iter = mapper.begin(); iter != mapper.end(); iter++) {
            cout << (*iter).first << " " << r[(*iter).second] << endl;
        }
    }
};

int main() {
    int lines, p;
    string from, to;
    Graph graph;

    cin >> lines >> p;

    // mapper converts strings to integer indexes;
    // also stores them in lexicographical order
    // v == number of vertices in the graph
    int v=0;
    map<string,int> mapper;
    for (int i=0; i<lines; i++) {
        cin >> from >> to;
        if (!mapper.count(from)) {
            mapper[from] = v++;
        }
        if (!mapper.count(to)) {
            mapper[to] = v++;
        }
        graph.insertEdge(mapper[from],mapper[to]);
    }

    graph.printPowerIteration(p,v,mapper);

    return 0;
}