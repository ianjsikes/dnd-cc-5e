module Character.Models exposing (..)


type alias Character =
    { name : String
    , playerName : String
    , age : Int
    , race : Race
    }


character : Character
character =
    { name = ""
    , playerName = ""
    , age = 0
    , race = Human
    }



-- RACE


type Race
    = Human
    | HalfElf
    | HalfOrc
    | Dragonborn
    | Tiefling
    | Dwarf DwarfSubrace
    | Elf ElfSubrace
    | Halfling HalflingSubrace
    | Gnome GnomeSubrace


type DwarfSubrace
    = Hill
    | Mountain


type ElfSubrace
    = High
    | Wood
    | Dark


type GnomeSubrace
    = Rock
    | Forest


type HalflingSubrace
    = Lightfoot
    | Stout
