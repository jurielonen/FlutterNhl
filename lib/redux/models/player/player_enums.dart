
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