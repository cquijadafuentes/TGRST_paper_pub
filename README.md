# TGRST_paper_pub
Repository with clean code for the TGRST paper.

This repository aims to disseminate the functional implementation of the Topological Relation Generalized Suffix-Tree (TRGST). This implementation represents a set of paths as sequences in a Generalized Suffix-Tree, enabling efficient queries on relations between these paths.

### Code Description:

- **TopoRel_GST.cpp and TopoRel_GST.hpp:** Implementation of the structure based on elements from the sdsl library by Simón Gog.

- **TopoRel_Naive.cpp and TopoRel_Naive.hpp:** Naive implementation used as a baseline for comparison in the article, also utilizing elements from the sdsl library.

### Prerequisites:

To install the required library, follow the standard instructions in the repository: [sdsl-lite](https://github.com/simongog/sdsl-lite)

The provided code is functional, and two test files are included to evaluate the implemented functions.

### Test Files:

In the "./dataset/" folder, three files are available:

- **gst_tripsMadrid_0005k.txt:** Defines the set of paths used as input for the naive representation. The format is a plain text file where the first line contains two integers, indicating the number of paths and stops in the network. Subsequent lines define each path, starting with an integer indicating the number of elements in the sequence, followed by identifiers representing stops.

- **gst_tripsMadrid_0005k.gst:** TRGST representation for the same set of paths. To build this, execute "./TopoRel_GST_build" with the naive file as input, as shown in the example: `./TopoRel_GST_build dataset/gst_tripsMadrid_0005k.txt dataset/gst_tripsMadrid_0005k.gst`

- **gst_tripsMadrid_0005k.queries:** Contains queries for running tests where multiple queries are executed in a single run. The file includes the number of queries and the elements to query.

### Executable Files:

Upon compiling the project (remember to install the sdsl library first), the following executable files are generated:

- **time_allTopoRels_byQueriesFile:** Calculates the average time to respond to queries. Input parameters include input_file.txt, input_file.gst, queries_file, repetitions, and optionally min_intersection. Outputs operation names, path count, query count, time for Naive implementation, time for TRGST implementation, Naive result size, and TRGST result size for each operation.

- **TopoRel_GST_build:** Builds the TRGST representation based on the naive input file and outputs to a specified file.

- **TopoRel_GST_size:** Outputs the size in bytes of each sub-structure that composes the TRGST.

- **TopoRel_GST_test:** Menu-driven executable allowing manual testing of implemented functionalities with detailed output and query execution.

- **TopoRel_GST_time:** Measures the time taken for a specified operation (allContain, allContained, allEqual, or allIntersect) using TRGST.

Similar files with "_Naive" in their names correspond to naive implementation equivalents.


