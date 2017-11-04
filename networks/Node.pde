/**
 * This class represents a node in the graph
 */
class Node {
  
  static final color nodeColor   = #F0C070;
  
  float x, y;
  String label;
  int edgeCount; // the degree of the node, i.e. the number of connecting edges
  float force_x, force_y;


  Node(String label) {
    this.label = label;
    x = random(width);
    y = random(height);
  }
  
  void increment() {
    edgeCount++;
  }
  

  void draw() {
    fill(nodeColor);
    stroke(0);
    strokeWeight(0.5);
    
    // Nodes with more edges are drawn larger
    ellipse(x, y, edgeCount*2, edgeCount*2);
    float w = textWidth(label);

    // Draw the label if it will fit inside the ellipse
    if (edgeCount > w/5) {
      fill(0);
      textAlign(CENTER, CENTER);
      text(label, x, y);
    }
  }
  
  
}