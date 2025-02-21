// Function to calculate travel time in minutes
double calculateTravelTime(double distance, double speed) {
  double timeInHours = distance / speed;
  double timeInMinutes = timeInHours * 60;
  return timeInMinutes;
}

void main() {
  // Given values
  double distance = 25; 
  double speed = 40;    // km/h

  double time = calculateTravelTime(distance, speed);

  print("Distance to office: $distance km");
  print("Speed: $speed km/h");
  print("Time taken to reach office: $time minutes");
}