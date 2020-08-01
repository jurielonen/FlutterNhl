
enum Position { D, C, R, G, L, HC, N_A }

Position positionFromString(String value){
  switch(value) {
    case "C": return Position.C;
    case "D": return Position.D;
    case "G": return Position.G;
    case "HC": return Position.HC;
    case "L": return Position.L;
    case "N/A": return Position.N_A;
    case "R": return Position.R;
    default: return Position.N_A;
  }
}

String positionToFullString(Position position){
  switch(position) {
    case Position.C: return 'Center';
    case Position.D: return 'Defenceman';
    case Position.G: return 'Goalie';
    case Position.HC: return 'Head coach';
    case Position.L: return 'Left wing';
    case Position.N_A: return 'Unknown';
    case Position.R: return 'Right wing';
    default: return 'Unknown';
  }
}