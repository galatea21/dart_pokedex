import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_dart/src/dto/utility/common.dart';

import '../aliases.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Ability with _$Ability {
  const factory Ability(
    int id,
    String name,
    @JsonKey(name: 'is_main_series') bool isMainSeries,
    NamedAPIResource generation,
    List<Name> names,
    @JsonKey(name: 'effect_entries') List<VerboseEffect> effectEntries,
    @JsonKey(name: 'effect_changes') List<AbilityEffectChange> effectChanges,
    @JsonKey(name: 'flavor_text_entries')
        List<AbilityFlavorText> flavorTextEntries,
    List<AbilityPokemon> pokemon,
  ) = _Ability;

  factory Ability.fromJson(Json json) => _$AbilityFromJson(json);
}

@freezed
class AbilityEffectChange with _$AbilityEffectChange {
  const factory AbilityEffectChange(
    @JsonKey(name: 'effect_entries') List<Effect> effectEntries,
    @JsonKey(name: 'version_group') NamedAPIResource versionGroup,
  ) = _AbilityEffectChange;

  factory AbilityEffectChange.fromJson(Json json) =>
      _$AbilityEffectChangeFromJson(json);
}

@freezed
class AbilityFlavorText with _$AbilityFlavorText {
  const factory AbilityFlavorText(
    @JsonKey(name: 'flavor_text') String flavorText,
    NamedAPIResource language,
    @JsonKey(name: 'version_group') NamedAPIResource versionGroup,
  ) = _AbilityFlavorText;

  factory AbilityFlavorText.fromJson(Json json) =>
      _$AbilityFlavorTextFromJson(json);
}

@freezed
class AbilityPokemon with _$AbilityPokemon {
  const factory AbilityPokemon(
    @JsonKey(name: 'is_hidden') bool isHidden,
    int slot,
    NamedAPIResource pokemon,
  ) = _AbilityPokemon;

  factory AbilityPokemon.fromJson(Json json) => _$AbilityPokemonFromJson(json);
}

@freezed
class Characteristic with _$Characteristic {
  const factory Characteristic(
    int id,
    @JsonKey(name: 'gene_modulo') int geneModulo,
    @JsonKey(name: 'possible_values') List<int> possibleValues,
  ) = _Characteristic;

  factory Characteristic.fromJson(Json json) => _$CharacteristicFromJson(json);
}

@freezed
class EggGroup with _$EggGroup {
  const factory EggGroup(
    int id,
    String name,
    List<Name> names,
    @JsonKey(name: 'pokemon_species') NamedAPIResourceList pokemonSpecies,
  ) = _EggGroup;

  factory EggGroup.fromJson(Json json) => _$EggGroupFromJson(json);
}

@freezed
class Gender with _$Gender {
  const factory Gender(
    int id,
    String name,
    @JsonKey(name: 'pokemon_species_details')
        List<PokemonSpeciesGender> pokemonSpeciesDetails,
    @JsonKey(name: 'required_for_evolution')
        NamedAPIResourceList requiredForEvolution,
  ) = _Gender;

  factory Gender.fromJson(Json json) => _$GenderFromJson(json);
}

@freezed
class PokemonSpeciesGender with _$PokemonSpeciesGender {
  const factory PokemonSpeciesGender(
    int rate,
    @JsonKey(name: 'pokemon_species') NamedAPIResource pokemonSpecies,
  ) = _PokemonSpeciesGender;

  factory PokemonSpeciesGender.fromJson(Json json) =>
      _$PokemonSpeciesGenderFromJson(json);
}

@freezed
class GrowthRate with _$GrowthRate {
  const factory GrowthRate(
    int id,
    String name,
    String formula,
    List<Description> descriptions,
    List<GrowthRateExperienceLevel> levels,
    @JsonKey(name: 'pokemon_species') NamedAPIResourceList pokemonSpecies,
  ) = _GrowthRate;

  factory GrowthRate.fromJson(Json json) => _$GrowthRateFromJson(json);
}

@freezed
class GrowthRateExperienceLevel with _$GrowthRateExperienceLevel {
  const factory GrowthRateExperienceLevel(
    int level,
    int experience,
  ) = _GrowthRateExperienceLevel;

  factory GrowthRateExperienceLevel.fromJson(Json json) =>
      _$GrowthRateExperienceLevelFromJson(json);
}

@freezed
class Nature with _$Nature {
  const factory Nature(
    int id,
    String name,
    @JsonKey(name: 'decreased_stat') NamedAPIResource decreasedStat,
    @JsonKey(name: 'increased_stat') NamedAPIResource increasedStat,
    @JsonKey(name: 'hates_flavor') NamedAPIResource hatesFlavor,
    @JsonKey(name: 'likes_flavor') NamedAPIResource likesFlavor,
    @JsonKey(name: 'pokeathlon_stat_changes')
        NamedAPIResourceList pokeathlonStatChanges,
    @JsonKey(name: 'move_battle_style_preferences')
        List<MoveBattleStylePreference> moveBattleStylePreferences,
    List<Name> names,
  ) = _Nature;

  factory Nature.fromJson(Json json) => _$NatureFromJson(json);
}

@freezed
class NatureStatChange with _$NatureStatChange {
  const factory NatureStatChange(
    @JsonKey(name: 'max_change') int maxChange,
    @JsonKey(name: 'pokeathlon_stat') NamedAPIResource pokeathlonStat,
  ) = _NatureStatChange;

  factory NatureStatChange.fromJson(Json json) =>
      _$NatureStatChangeFromJson(json);
}

@freezed
class MoveBattleStylePreference with _$MoveBattleStylePreference {
  const factory MoveBattleStylePreference(
    @JsonKey(name: 'low_hp_preference') int lowHpPreference,
    @JsonKey(name: 'high_hp_preference') int highHpPreference,
    @JsonKey(name: 'move_battle_style') NamedAPIResource moveBattleStyle,
  ) = _MoveBattleStylePreference;

  factory MoveBattleStylePreference.fromJson(Json json) =>
      _$MoveBattleStylePreferenceFromJson(json);
}

@freezed
class PokeathlonStat with _$PokeathlonStat {
  const factory PokeathlonStat(
    int id,
    String name,
    List<Name> names,
    @JsonKey(name: 'affecting_natures')
        NaturePokeathlonStatAffectSets affectingNatures,
  ) = _PokeathlonStat;

  factory PokeathlonStat.fromJson(Json json) => _$PokeathlonStatFromJson(json);
}

@freezed
class NaturePokeathlonStatAffectSets with _$NaturePokeathlonStatAffectSets {
  const factory NaturePokeathlonStatAffectSets(
    List<NaturePokeathlonStatAffect> increase,
    List<NaturePokeathlonStatAffect> decrease,
  ) = _NaturePokeathlonStatAffectSets;

  factory NaturePokeathlonStatAffectSets.fromJson(Json json) =>
      _$NaturePokeathlonStatAffectSetsFromJson(json);
}

@freezed
class NaturePokeathlonStatAffect with _$NaturePokeathlonStatAffect {
  const factory NaturePokeathlonStatAffect(
    @JsonKey(name: 'max_change') int maxChange,
    NamedAPIResource nature,
  ) = _NaturePokeathlonStatAffect;

  factory NaturePokeathlonStatAffect.fromJson(Json json) =>
      _$NaturePokeathlonStatAffectFromJson(json);
}

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon(
    int id,
    String name,
    @JsonKey(name: 'base_experience') int baseExperience,
    int height,
    @JsonKey(name: 'is_default') bool isDefault,
    int order,
    int weight,
    List<PokemonAbility> abilities,
    NamedAPIResourceList forms,
    @JsonKey(name: 'game_indices') List<VersionGameIndex> gameIndices,
    @JsonKey(name: 'held_items') List<PokemonHeldItem> heldItems,
    @JsonKey(name: 'location_area_encounters') String locationAreaEncounters,
    List<PokemonMove> moves,
    @JsonKey(name: 'past_types') List<PokemonTypePast> pastTypes,
    PokemonSprites sprites,
    NamedAPIResource species,
    List<PokemonStat> stats,
    List<PokemonType> types,
  ) = _Pokemon;

  factory Pokemon.fromJson(Json json) => _$PokemonFromJson(json);
}

@freezed
class PokemonAbility with _$PokemonAbility {
  const factory PokemonAbility(
    @JsonKey(name: 'is_hidden') bool isHidden,
    int slot,
    NamedAPIResource ability,
  ) = _PokemonAbility;

  factory PokemonAbility.fromJson(Json json) => _$PokemonAbilityFromJson(json);
}

@freezed
class PokemonType with _$PokemonType {
  const factory PokemonType(
    int slot,
    NamedAPIResource type,
  ) = _PokemonType;

  factory PokemonType.fromJson(Json json) => _$PokemonTypeFromJson(json);
}

@freezed
class PokemonFormType with _$PokemonFormType {
  const factory PokemonFormType(
    int slot,
    NamedAPIResource type,
  ) = _PokemonFormType;

  factory PokemonFormType.fromJson(Json json) =>
      _$PokemonFormTypeFromJson(json);
}

@freezed
class PokemonTypePast with _$PokemonTypePast {
  const factory PokemonTypePast(
    NamedAPIResource generation,
    List<PokemonType> types,
  ) = _PokemonTypePast;

  factory PokemonTypePast.fromJson(Json json) =>
      _$PokemonTypePastFromJson(json);
}

@freezed
class PokemonHeldItem with _$PokemonHeldItem {
  const factory PokemonHeldItem(
    NamedAPIResource item,
    @JsonKey(name: 'version_details')
        List<PokemonHeldItemVersion> versionDetails,
  ) = _PokemonHeldItem;

  factory PokemonHeldItem.fromJson(Json json) =>
      _$PokemonHeldItemFromJson(json);
}

@freezed
class PokemonHeldItemVersion with _$PokemonHeldItemVersion {
  const factory PokemonHeldItemVersion(
    NamedAPIResource version,
    int rarity,
  ) = _PokemonHeldItemVersion;

  factory PokemonHeldItemVersion.fromJson(Json json) =>
      _$PokemonHeldItemVersionFromJson(json);
}

@freezed
class PokemonMove with _$PokemonMove {
  const factory PokemonMove(
    NamedAPIResource move,
    @JsonKey(name: 'version_group_details')
        List<PokemonMoveVersion> versionGroupDetails,
  ) = _PokemonMove;

  factory PokemonMove.fromJson(Json json) => _$PokemonMoveFromJson(json);
}

@freezed
class PokemonMoveVersion with _$PokemonMoveVersion {
  const factory PokemonMoveVersion(
    @JsonKey(name: 'move_learn_method') NamedAPIResource moveLearnMethod,
    @JsonKey(name: 'version_group') NamedAPIResource versionGroup,
    @JsonKey(name: 'level_learned_at') int levelLearnedAt,
  ) = _PokemonMoveVersion;

  factory PokemonMoveVersion.fromJson(Json json) =>
      _$PokemonMoveVersionFromJson(json);
}

@freezed
class PokemonStat with _$PokemonStat {
  const factory PokemonStat(
    NamedAPIResource stat,
    int effort,
    @JsonKey(name: 'base_stat') int baseStat,
  ) = _PokemonStat;

  factory PokemonStat.fromJson(Json json) => _$PokemonStatFromJson(json);
}

@freezed
class PokemonSprites with _$PokemonSprites {
  const factory PokemonSprites(
    @JsonKey(name: 'front_default') String frontDefault,
    @JsonKey(name: 'front_shiny') String frontShiny,
    @JsonKey(name: 'front_female') String frontFemale,
    @JsonKey(name: 'front_shiny_female') String frontShinyFemale,
    @JsonKey(name: 'back_default') String backDefault,
    @JsonKey(name: 'back_shiny') String backShiny,
    @JsonKey(name: 'back_female') String backFemale,
    @JsonKey(name: 'back_shiny_female') String backShinyFemale,
  ) = _PokemonSprites;

  factory PokemonSprites.fromJson(Json json) => _$PokemonSpritesFromJson(json);
}

@freezed
class PokemonLocationAreas with _$PokemonLocationAreas {
  const factory PokemonLocationAreas(
    @JsonKey(name: 'location_area') NamedAPIResource locationArea,
    @JsonKey(name: 'version_details')
        List<VersionEncounterDetail> versionDetails,
  ) = _PokemonLocationAreas;

  factory PokemonLocationAreas.fromJson(Json json) =>
      _$PokemonLocationAreasFromJson(json);
}

@freezed
class PokemonColor with _$PokemonColor {
  const factory PokemonColor(
    int id,
    String name,
    List<Name> names,
    @JsonKey(name: 'pokemon_species') NamedAPIResourceList pokemonSpecies,
  ) = _PokemonColor;

  factory PokemonColor.fromJson(Json json) => _$PokemonColorFromJson(json);
}

@freezed
class PokemonForm with _$PokemonForm {
  const factory PokemonForm(
    int id,
    String name,
    int order,
    @JsonKey(name: 'form_order') int formOrder,
    @JsonKey(name: 'is_default') bool isDefault,
    @JsonKey(name: 'is_battle_only') bool isBattleOnly,
    @JsonKey(name: 'is_mega') bool isMega,
    @JsonKey(name: 'form_name') String formName,
    NamedAPIResource pokemon,
    NamedAPIResource types,
    PokemonFormSprites sprites,
    @JsonKey(name: 'version_group') NamedAPIResource versionGroup,
    List<Name> names,
    @JsonKey(name: 'form_names') List<Name> formNames,
  ) = _PokemonForm;

  factory PokemonForm.fromJson(Json json) => _$PokemonFormFromJson(json);
}

@freezed
class PokemonFormSprites with _$PokemonFormSprites {
  const factory PokemonFormSprites(
    @JsonKey(name: 'front_default') String frontDefault,
    @JsonKey(name: 'front_shiny') String frontShiny,
    @JsonKey(name: 'back_default') String backDefault,
    @JsonKey(name: 'back_shiny') String backShiny,
  ) = _PokemonFormSprites;

  factory PokemonFormSprites.fromJson(Json json) =>
      _$PokemonFormSpritesFromJson(json);
}

@freezed
class PokemonHabitat with _$PokemonHabitat {
  const factory PokemonHabitat(
    int id,
    String name,
    List<Name> names,
    @JsonKey(name: 'pokemon_species') NamedAPIResourceList pokemonSpecies,
  ) = _PokemonHabitat;

  factory PokemonHabitat.fromJson(Json json) => _$PokemonHabitatFromJson(json);
}

@freezed
class PokemonShape with _$PokemonShape {
  const factory PokemonShape(
    int id,
    String name,
    @JsonKey(name: 'awesome_names') List<AwesomeName> awesomeNames,
    List<Name> names,
    @JsonKey(name: 'pokemon_species') NamedAPIResourceList pokemonSpecies,
  ) = _PokemonShape;

  factory PokemonShape.fromJson(Json json) => _$PokemonShapeFromJson(json);
}

@freezed
class AwesomeName with _$AwesomeName {
  const factory AwesomeName(
    @JsonKey(name: 'awesome_name') String awesomeName,
    NamedAPIResource language,
  ) = _AwesomeName;

  factory AwesomeName.fromJson(Json json) => _$AwesomeNameFromJson(json);
}

@freezed
class PokemonSpecies with _$PokemonSpecies {
  const factory PokemonSpecies(
    int id,
    String name,
    int order,
    @JsonKey(name: 'gender_rate') int genderRate,
    @JsonKey(name: 'capture_rate') int captureRate,
    @JsonKey(name: 'base_happiness') int baseHappiness,
    @JsonKey(name: 'is_baby') bool isBaby,
    @JsonKey(name: 'is_legendary') bool isLegendary,
    @JsonKey(name: 'is_mythical') bool isMythical,
    @JsonKey(name: 'hatch_counter') int hatchCounter,
    @JsonKey(name: 'has_gender_differences') bool hasGenderdifferences,
    @JsonKey(name: 'forms_switchable') bool formsSwitchable,
    @JsonKey(name: 'growth_rate') NamedAPIResource growthRate,
    @JsonKey(name: 'pokedex_numbers')
        List<PokemonSpeciesDexEntry> pokedexNumbers,
    @JsonKey(name: 'egg_groups') NamedAPIResourceList eggGroups,
    NamedAPIResource color,
    NamedAPIResource shape,
    @JsonKey(name: 'evolves_from_species')
        NamedAPIResourceList evolvesFromSpecies,
    @JsonKey(name: 'evolution_chain') APIResource evolutionChain,
    NamedAPIResource habitat,
    NamedAPIResource generation,
    List<Name> names,
    @JsonKey(name: 'pal_park_encounters')
        List<PalParkEncounterArea> palParkEncounters,
    @JsonKey(name: 'flavor_text_entries') List<FlavorText> flavorTextEntries,
    @JsonKey(name: 'form_descriptions') List<Description> formDescriptions,
    List<Genus> genera,
    List<PokemonSpeciesVariety> varieties,
  ) = _PokemonSpecies;

  factory PokemonSpecies.fromJson(Json json) => _$PokemonSpeciesFromJson(json);
}

@freezed
class Genus with _$Genus {
  const factory Genus(
    String genus,
    NamedAPIResource language,
  ) = _Genus;

  factory Genus.fromJson(Json json) => _$GenusFromJson(json);
}

@freezed
class PokemonSpeciesDexEntry with _$PokemonSpeciesDexEntry {
  const factory PokemonSpeciesDexEntry(
    @JsonKey(name: 'entry_number') int entryNumber,
    NamedAPIResource pokedex,
  ) = _PokemonSpeciesDexEntry;

  factory PokemonSpeciesDexEntry.fromJson(Json json) =>
      _$PokemonSpeciesDexEntryFromJson(json);
}

@freezed
class PalParkEncounterArea with _$PalParkEncounterArea {
  const factory PalParkEncounterArea(
    @JsonKey(name: 'base_score') int baseScore,
    int rate,
    NamedAPIResource area,
  ) = _PalParkEncounterArea;

  factory PalParkEncounterArea.fromJson(Json json) =>
      _$PalParkEncounterAreaFromJson(json);
}

@freezed
class PokemonSpeciesVariety with _$PokemonSpeciesVariety {
  const factory PokemonSpeciesVariety(
    @JsonKey(name: 'is_default') bool isDefault,
    NamedAPIResource pokemon,
  ) = _PokemonSpeciesVariety;

  factory PokemonSpeciesVariety.fromJson(Json json) =>
      _$PokemonSpeciesVarietyFromJson(json);
}

@freezed
class Stat with _$Stat {
  const factory Stat(
    int id,
    String name,
    @JsonKey(name: 'game_index') int gameIndex,
    @JsonKey(name: 'is_battle_only') bool isBattleOnly,
    @JsonKey(name: 'affecting_moves') MoveStatAffectSets affectingMoves,
    @JsonKey(name: 'affecting_natures') NatureStatAffectSets affectingNatures,
    APIResourceList characteristics,
    @JsonKey(name: 'move_damage_class') NamedAPIResource moveDamageClass,
    List<Name> names,
  ) = _Stat;

  factory Stat.fromJson(Json json) => _$StatFromJson(json);
}

@freezed
class MoveStatAffectSets with _$MoveStatAffectSets {
  const factory MoveStatAffectSets(
    List<MoveStatAffect> increase,
    List<MoveStatAffect> decrease,
  ) = _MoveStatAffectSets;

  factory MoveStatAffectSets.fromJson(Json json) =>
      _$MoveStatAffectSetsFromJson(json);
}

@freezed
class MoveStatAffect with _$MoveStatAffect {
  const factory MoveStatAffect(
    int change,
    NamedAPIResource move,
  ) = _MoveStatAffect;

  factory MoveStatAffect.fromJson(Json json) => _$MoveStatAffectFromJson(json);
}

@freezed
class NatureStatAffectSets with _$NatureStatAffectSets {
  const factory NatureStatAffectSets(
    NamedAPIResourceList increase,
    NamedAPIResourceList decrease,
  ) = _NatureStatAffectSets;

  factory NatureStatAffectSets.fromJson(Json json) =>
      _$NatureStatAffectSetsFromJson(json);
}

@freezed
class Type with _$Type {
  const factory Type(
    int id,
    String name,
    @JsonKey(name: 'damage_relations') TypeRelations damageRelations,
    @JsonKey(name: 'past_damage_relations')
        List<TypeRelationsPast> pastDamageRelations,
    @JsonKey(name: 'game_indices') List<GenerationGameIndex> gameIndices,
    NamedAPIResource generation,
    @JsonKey(name: 'move_damage_class') NamedAPIResource moveDamageClass,
    List<Name> names,
    List<TypePokemon> pokemon,
    NamedAPIResourceList moves,
  ) = _Type;

  factory Type.fromJson(Json json) => _$TypeFromJson(json);
}

@freezed
class TypePokemon with _$TypePokemon {
  const factory TypePokemon(
    int slot,
    NamedAPIResource pokemon,
  ) = _TypePokemon;

  factory TypePokemon.fromJson(Json json) => _$TypePokemonFromJson(json);
}

@freezed
class TypeRelations with _$TypeRelations {
  const factory TypeRelations(
    @JsonKey(name: 'no_damage_to') NamedAPIResourceList noDamageTo,
    @JsonKey(name: 'half_damage_to') NamedAPIResourceList halfDamageTo,
    @JsonKey(name: 'double_damage_to') NamedAPIResourceList doubleDamageTo,
    @JsonKey(name: 'no_damage_from') NamedAPIResourceList noDamageFrom,
    @JsonKey(name: 'half_damage_from') NamedAPIResourceList halfDamageFrom,
    @JsonKey(name: 'double_damage_from') NamedAPIResourceList doubleDamageFrom,
  ) = _TypeRelations;

  factory TypeRelations.fromJson(Json json) => _$TypeRelationsFromJson(json);
}

@freezed
class TypeRelationsPast with _$TypeRelationsPast {
  const factory TypeRelationsPast(
    NamedAPIResource generation,
    @JsonKey(name: 'damage_relations') TypeRelations damageRelations,
  ) = _TypeRelationsPast;

  factory TypeRelationsPast.fromJson(Json json) =>
      _$TypeRelationsPastFromJson(json);
}
