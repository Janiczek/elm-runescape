module RuneScape.Quests exposing
    ( Quest(..)
    , isFree, isMembers
    )

{-| A database of quests and their metadata

@docs Quest

@docs isFree, isMembers

-}

-- TODO title
-- TODO display name
-- TODO combat requirement
-- TODO quest points requirement
-- TODO quest requirement (Set)
-- TODO skill requirement (Set)
-- TODO xp reward (Map?)
-- TODO lamp reward (Set)
-- TODO quest points reward


{-| -}
type Quest
    = AClockworkSyringe
    | AFairyTaleIGrowingPains
    | AFairyTaleIICureAQueen
    | AFairyTaleIIIBattleAtOrksRift
    | AllFiredUp
    | AnimalMagnetism
    | AnotherSliceOfHAM
    | AsAFirstResort
    | AShadowOverAshdale
    | ASoulsBane
    | ATailOfTwoCats
    | AVoidDance
    | BackToMyRoots
    | BackToTheFreezer
    | BeneathCursedTides
    | BetweenARock
    | BigChompyBirdHunting
    | Biohazard
    | BirthrightOfTheDwarves
    | BloodRunsDeep
    | BringingHomeTheBacon
    | BrokenHome
    | BuyersAndCellars
    | CabinFever
    | CallOfTheAncestors
    | CarnilleanRising
    | CatapultConstruction
    | ChefsAssistant
    | ChildrenOfMah
    | ClockTower
    | ColdWar
    | Contact
    | CooksAssistant
    | CreatureOfFenkenstrain
    | CrocodileTears
    | CurseOfTheBlackStone
    | DeadliestCatch
    | DealingWithScabaras
    | DeathPlateau
    | DeathToTheDorgeshuun
    | DefenderOfVarrock
    | DemonSlayer
    | DesertTreasure
    | DesperateTimes
    | DeviousMinds
    | DiamondinTheRough
    | DimensionOfDisaster
    | DimensionOfDisasterCoinOfTheRealm
    | DimensionOfDisasterCurseOfArrav
    | DimensionOfDisasterDefenderOfVarrock
    | DimensionOfDisasterDemonSlayer
    | DimensionOfDisasterShieldOfArrav
    | DishonourAmongThieves
    | DoNoEvil
    | DragonSlayer
    | DreamMentor
    | DruidicRitual
    | DwarfCannon
    | EadgarsRuse
    | EaglesPeak
    | ElementalWorkshopI
    | ElementalWorkshopII
    | ElementalWorkshopIII
    | ElementalWorkshopIV
    | EnakhrasLament
    | EnlightenedJourney
    | ErnestTheChicken
    | EvilDavesBigDayOut
    | FamilyCrest
    | FateOfTheGods
    | FightArena
    | FishingContest
    | ForgettableTaleOfADrunkenDwarf
    | ForgivenessOfAChaosDwarf
    | FurNSeek
    | GardenOfTranquillity
    | GertrudesCat
    | GhostsAhoy
    | GloriousMemories
    | GoblinDiplomacy
    | GowerQuest
    | GrimTales
    | GunnarsGround
    | HauntedMine
    | HazeelCult
    | HeartOfStone
    | HeroesQuest
    | HerosWelcome
    | HolyGrail
    | HorrorFromTheDeep
    | HuntForRedRaktuber
    | IcthlarinsLittleHelper
    | ImpCatcher
    | ImpressingTheLocals
    | InAidOfTheMyreque
    | InPyreNeed
    | InSearchOfTheMyreque
    | JunglePotion
    | KennithsConcerns
    | KindredSpirits
    | KingOfTheDwarves
    | KingsRansom
    | LandOfTheGoblins
    | LegacyOfSeergaze
    | LegendsQuest
    | LetThemEatPie
    | LostCity
    | LoveStory
    | LunarDiplomacy
    | MakingHistory
    | MeetingHistory
    | MerlinsCrystal
    | MissingMyMummy
    | MissingPresumedDeath
    | MonkeyMadness
    | MonksFriend
    | MountainDaughter
    | MourningsEndPartI
    | MourningsEndPartII
    | MurderMystery
    | MyArmsBigAdventure
    | MythsOfTheWhiteLands
    | NatureSpirit
    | NomadsElegy
    | NomadsRequiem
    | ObservatoryQuest
    | OlafsQuest
    | OneOfAKind
    | OnePiercingNote
    | OneSmallFavour
    | OurManinTheNorth
    | PerilsOfIceMountain
    | PhiteClub
    | PiecesOfHate
    | PiratesTreasure
    | PlagueCity
    | PlaguesEnd
    | PriestInPeril
    | QuietBeforeTheSwarm
    | RagAndBoneMan
    | RatCatchers
    | RecipeForDisaster
    | RecipeForDisasterAnoTherCooksQuest
    | RecipeForDisasterDefeatingTheCulinaromancer
    | RecipeForDisasterFreeingEvilDave
    | RecipeForDisasterFreeingKingAwowogei
    | RecipeForDisasterFreeingPiratePete
    | RecipeForDisasterFreeingSirAmikVarze
    | RecipeForDisasterFreeingSkrachUglogwee
    | RecipeForDisasterFreeingTheGoblinGenerals
    | RecipeForDisasterFreeingTheLumbridgeSage
    | RecipeForDisasterFreeingTheMountainDwarf
    | RecruitmentDrive
    | Regicide
    | RitualOfTheMahjarrat
    | RiverOfBlood
    | RockingOut
    | RovingElves
    | RoyalTrouble
    | RumDeal
    | RuneMechanics
    | RuneMemories
    | RuneMysteries
    | SaltinTheWound
    | ScorpionCatcher
    | SeaSlug
    | ShadesOfMortton
    | ShadowOfTheStorm
    | SheepHerder
    | ShieldOfArrav
    | ShiloVillage
    | SliskesEndgame
    | SmokingKills
    | SomeLikeItCold
    | SongFromTheDepths
    | SpiritOfSummer
    | SpiritsOfTheElid
    | StolenHearts
    | SummersEnd
    | SwanSong
    | SweptAway
    | TaiBwoWannaiTrio
    | TearsOfGuthix
    | TempleOfIkov
    | TheBloodPact
    | TheBranchesOfDarkmeyer
    | TheBrinkOfExtinction
    | TheChosenCommander
    | TheCurseOfArrav
    | TheDarknessOfHallowvale
    | TheDeathOfChivalry
    | TheDigSite
    | TheElderKiln
    | TheEyesOfGlouphrie
    | TheFeud
    | TheFiremakersCurse
    | TheFremennikIsles
    | TheFremennikTrials
    | TheGiantDwarf
    | TheGolem
    | TheGrandTree
    | TheGreatBrainRobbery
    | TheHandinTheSand
    | TheJackOfSpades
    | TheKnightsSword
    | TheLightWithin
    | TheLordOfVampyrium
    | TheLostTribe
    | TheMightyFall
    | TheNeedleSkips
    | ThePathOfGlouphrie
    | ThePrisonerOfGlouphrie
    | TheRestlessGhost
    | TheSlugMenace
    | TheTaleOfTheMuspah
    | TheTempleAtSenntisten
    | TheTouristTrap
    | TheVoidStaresBack
    | TheWorldWakes
    | ThroneOfMiscellania
    | TokTzKetDill
    | TowerOfLife
    | TreeGnomeVillage
    | TribalTotem
    | TrollRomance
    | TrollStronghold
    | UndergroundPass
    | UnstableFoundations
    | VampyreSlayer
    | VioletIsBlue
    | Wanted
    | Watchtower
    | WaterfallQuest
    | WhatLiesBelow
    | WhatsMineIsYours
    | WhileGuthixSleeps
    | WitchsHouse
    | WithinTheLight
    | WolfWhistle
    | YouAreIt
    | ZogreFleshEaters


{-| -}
isMembers : Quest -> Bool
isMembers quest =
    case quest of
        UnstableFoundations ->
            False

        CooksAssistant ->
            False

        DemonSlayer ->
            False

        TheRestlessGhost ->
            False

        GunnarsGround ->
            False

        ShieldOfArrav ->
            False

        ErnestTheChicken ->
            False

        VampyreSlayer ->
            False

        ImpCatcher ->
            False

        StolenHearts ->
            False

        WhatsMineIsYours ->
            False

        TheDeathOfChivalry ->
            False

        TheKnightsSword ->
            False

        GoblinDiplomacy ->
            False

        PiratesTreasure ->
            False

        DragonSlayer ->
            False

        DruidicRitual ->
            False

        WitchsHouse ->
            False

        GertrudesCat ->
            False

        RuneMysteries ->
            False

        PriestInPeril ->
            False

        DeathPlateau ->
            False

        ASoulsBane ->
            False

        WolfWhistle ->
            False

        PerilsOfIceMountain ->
            False

        SweptAway ->
            False

        MythsOfTheWhiteLands ->
            False

        TheBloodPact ->
            False

        OnePiercingNote ->
            False

        LetThemEatPie ->
            False

        SongFromTheDepths ->
            False

        MissingPresumedDeath ->
            False

        AShadowOverAshdale ->
            False

        BrokenHome ->
            False

        BeneathCursedTides ->
            False

        GowerQuest ->
            False

        VioletIsBlue ->
            False

        ChefsAssistant ->
            False

        _ ->
            True


{-| -}
isFree : Quest -> Bool
isFree quest =
    not (isMembers quest)
