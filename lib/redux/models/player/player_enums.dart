
enum Position { D, C, R, G, L, HC, N_A }

Position positionFromString(String value) {
  switch (value) {
    case "C":
      return Position.C;
    case "D":
      return Position.D;
    case "G":
      return Position.G;
    case "HC":
      return Position.HC;
    case "L":
      return Position.L;
    case "N/A":
      return Position.N_A;
    case "R":
      return Position.R;
    default:
      return Position.N_A;
  }
}

String positionToFullString(Position position) {
  switch (position) {
    case Position.C:
      return 'Center';
    case Position.D:
      return 'Defenceman';
    case Position.G:
      return 'Goalie';
    case Position.HC:
      return 'Head coach';
    case Position.L:
      return 'Left wing';
    case Position.N_A:
      return 'Unknown';
    case Position.R:
      return 'Right wing';
    default:
      return 'Unknown';
  }
}

String positionToAbbString(Position position) {
  switch (position) {
    case Position.C:
      return 'C';
    case Position.D:
      return 'D';
    case Position.G:
      return 'G';
    case Position.HC:
      return 'HC';
    case Position.L:
      return 'LW';
    case Position.N_A:
      return 'N_A';
    case Position.R:
      return 'RW';
    default:
      return 'N_A';
  }
}

String positionToApiString(Position position) {
  switch (position) {
    case Position.C:
      return 'C';
    case Position.D:
      return 'D';
    case Position.L:
      return 'L';
    case Position.R:
      return 'R';
    case Position.G:
      return 'G';
    case Position.HC:
      return 'HC';
    case Position.N_A:
      return 'N_A';
    default:
      return 'N_A';
  }
}

bool isSkater(Position position) =>
    position == Position.C ||
    position == Position.R ||
    position == Position.L ||
    position == Position.D;
