/**
 * This class represents an edge in the graph
 */
class Edge {
  
  static final color edgeColor   = #000000;
  
  Node from;
  Node to;
  float weight;
  

  Edge(Node from, Node to, float weight) {
    this.from = from;
    this.to = to;
    this.weight = weight;
  }
  

  void draw() {
    stroke(edgeColor);
    strokeWeight(0.35);
    line(from.x, from.y, to.x, to.y);
  }
}