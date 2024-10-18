type season = Spring | Summer | Autumn | Winter;;

let squirrel_play (degrees:int) (seasons:season) = match seasons with
  | Summer -> degrees >= 15 && degrees <= 35
  | _ -> degrees >= 15 && degrees <= 30;;