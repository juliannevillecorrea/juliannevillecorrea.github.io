let n = 0;
let c = 6; // Scale factor
let startAngle = 0;

function setup() {
  createCanvas(windowWidth, windowHeight);
  angleMode(DEGREES);
  colorMode(HSB, 360, 255, 255, 1);
  background(0);
}

function draw() {
  // Semi-transparent background creates a beautiful motion blur/trail effect
  background(0, 0, 0, 0.05); 
  
  // Translate to center to watch the geometry unfold
  translate(width / 2, height / 2);
  
  // Dynamic rotation speed based on frame count
  let currentAngleOffset = frameCount * 0.02;
  
  // Draw a fixed number of particles per frame to build the pattern instantly
  for (let i = 0; i < 250; i++) {
    // The Golden Angle (~137.5 degrees) defines the phyllotaxis spiral
    let a = (n + i) * (137.5 + currentAngleOffset);
    
    // Fermat's Spiral radius formula: r = c * sqrt(n)
    let r = c * sqrt(n + i);
    
    // Convert polar coordinates (r, a) to Cartesian (x, y)
    let x = r * cos(a);
    let y = r * sin(a);
    
    // Calculate a dynamic color hue based on radius and time
    let hue = (r + frameCount * 0.5) % 360;
    
    // Calculate size with a sine wave for an organic, breathing pulse
    let size = map(sin(r * 0.05 - frameCount * 0.05), -1, 1, 2, 8);
    
    fill(hue, 200, 255, 0.8);
    noStroke();
    
    // Draw the life-like geometric node
    ellipse(x, y, size, size);
  }
  
  // Constantly increment to keep the spiral expanding outward
  n += 0.5;
  
  // Reset periodically so it doesn't leave the screen completely
  if (c * sqrt(n) > min(width, height) * 0.6) {
    n = 0;
  }
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
  background(0);
  n = 0;
}