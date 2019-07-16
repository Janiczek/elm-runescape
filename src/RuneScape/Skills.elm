module RuneScape.Skills exposing
    ( Skill(..), SkillType(..)
    , isMembers, skillType, maxLevel
    )

{-|

@docs Skill, SkillType

@docs isMembers, skillType, maxLevel

-}


{-| -}
type Skill
    = Agility
    | Attack
    | Constitution
    | Construction
    | Cooking
    | Crafting
    | Defence
    | Divination
    | Dungeoneering
    | Farming
    | Firemaking
    | Fishing
    | Fletching
    | Herblore
    | Hunter
    | Invention
    | Magic
    | Mining
    | Prayer
    | Ranged
    | Runecrafting
    | Slayer
    | Smithing
    | Strength
    | Summoning
    | Thieving
    | Woodcutting


{-| -}
type SkillType
    = Artisan
    | Combat
    | Elite
    | Gathering
    | Support


{-| -}
maxLevel : Skill -> Int
maxLevel skill =
    case skill of
        Dungeoneering ->
            120

        Invention ->
            120

        _ ->
            99


{-| -}
isMembers : Skill -> Bool
isMembers skill =
    case skill of
        Agility ->
            True

        Construction ->
            True

        Divination ->
            True

        Farming ->
            True

        Fletching ->
            True

        Herblore ->
            True

        Hunter ->
            True

        Invention ->
            True

        Slayer ->
            True

        Summoning ->
            True

        Thieving ->
            True

        _ ->
            False


{-| -}
skillType : Skill -> SkillType
skillType skill =
    case skill of
        Agility ->
            Support

        Attack ->
            Combat

        Constitution ->
            Combat

        Construction ->
            Artisan

        Cooking ->
            Artisan

        Crafting ->
            Artisan

        Defence ->
            Combat

        Divination ->
            Gathering

        Dungeoneering ->
            Support

        Farming ->
            Gathering

        Firemaking ->
            Artisan

        Fishing ->
            Gathering

        Fletching ->
            Artisan

        Herblore ->
            Artisan

        Hunter ->
            Gathering

        Invention ->
            Elite

        Magic ->
            Combat

        Mining ->
            Gathering

        Prayer ->
            Combat

        Ranged ->
            Gathering

        Runecrafting ->
            Artisan

        Slayer ->
            Support

        Smithing ->
            Artisan

        Strength ->
            Combat

        Summoning ->
            Combat

        Thieving ->
            Support

        Woodcutting ->
            Gathering
