// ignore_for_file: avoid_positional_boolean_parameters

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/src/aliases.dart';
import 'package:pokedex/src/dto/items.dart';
import 'package:pokedex/src/dto/locations.dart';
import 'package:pokedex/src/dto/moves.dart';
import 'package:pokedex/src/dto/pokemon.dart';
import 'package:pokedex/src/dto/utility/common.dart';

part 'evolutions.freezed.dart';
part 'evolutions.g.dart';

@freezed
class EvolutionChain with _$EvolutionChain {
  const factory EvolutionChain(
    /// The identifier for this resource.
    int id,

    /// The item that a Pokémon would be holding when mating
    /// that would trigger the egg hatching a baby Pokémon rather than a basic Pokémon.
    ///
    /// See also:
    ///
    /// [Item]
    @JsonKey(name: 'baby_trigger_item') NamedAPIResource? babyTriggerItem,

    /// The base chain link object.
    /// Each link contains evolution details for a Pokémon in the chain.
    /// Each link references the next Pokémon in the natural evolution order.
    ChainLink chain,
  ) = _EvolutionChain;

  factory EvolutionChain.fromJson(Json json) => _$EvolutionChainFromJson(json);
}

@freezed
class ChainLink with _$ChainLink {
  const factory ChainLink(
    /// Whether or not this link is for a baby Pokémon.
    /// This would only ever be true on the base link.
    @JsonKey(name: 'is_baby') bool isBaby,

    /// The Pokémon species at this point in the evolution chain.
    ///
    /// See also:
    ///
    /// [PokemonSpecies]
    NamedAPIResource species,

    /// All details regarding the specific details of the referenced Pokémon species evolution.
    @JsonKey(name: 'evolution_details') List<EvolutionDetail> evolutionDetails,

    /// A List of chain objects.
    @JsonKey(name: 'evolves_to') List<ChainLink> evolvesTo,
  ) = _ChainLink;

  factory ChainLink.fromJson(Json json) => _$ChainLinkFromJson(json);
}

@freezed
class EvolutionDetail with _$EvolutionDetail {
  const factory EvolutionDetail(
    /// The item required to cause evolution this into Pokémon species.
    ///
    /// See also:
    ///
    /// [Item]
    NamedAPIResource? item,

    /// The type of event that triggers evolution into this Pokémon species.
    ///
    /// See also:
    ///
    /// [EvolutionTrigger]
    NamedAPIResource trigger,

    /// The id of the gender of the evolving Pokémon species must be
    /// in order to evolve into this Pokémon species.
    int? gender,

    /// The item the evolving Pokémon species must be holding
    /// during the evolution trigger event to evolve into this Pokémon species.
    ///
    /// See also:
    ///
    /// [Item]
    @JsonKey(name: 'held_item') NamedAPIResource? heldItem,

    /// The move that must be known by the evolving Pokémon species
    /// during the evolution trigger event in order to evolve into this Pokémon species.
    ///
    /// See also:
    ///
    /// [Move]
    @JsonKey(name: 'known_move') NamedAPIResource? knownMove,

    /// The evolving Pokémon species must know a move with this type
    /// during the evolution trigger event in order to evolve into this Pokémon species.
    ///
    /// See also:
    ///
    /// [Type]
    @JsonKey(name: 'known_move_type') NamedAPIResource? knownMoveType,

    /// The location the evolution must be triggered at.
    ///
    /// See also:
    ///
    /// [Location]
    NamedAPIResource? location,

    /// The minimum required level of the evolving Pokémon species to evolve
    /// into this Pokémon species.
    @JsonKey(name: 'min_level') int? minLevel,

    /// The minimum required level of happiness the evolving Pokémon species
    /// to evolve into this Pokémon species.
    @JsonKey(name: 'min_happiness') int? minHappiness,

    /// The minimum required level of beauty the evolving Pokémon species
    /// to evolve into this Pokémon species.
    @JsonKey(name: 'min_beauty') int? minBeauty,

    /// The minimum required level of affection the evolving Pokémon species
    /// to evolve into this Pokémon species.
    @JsonKey(name: 'min_affection') int? minAffection,

    /// Whether or not it must be raining in the overworld
    /// to cause evolution this Pokémon species.
    @JsonKey(name: 'needs_overworld_rain') bool needsOverworldRain,

    /// The Pokémon species that must be in the players party
    /// in order for the evolving Pokémon species to evolve into this Pokémon species.
    ///
    /// See also:
    ///
    /// [PokemonSpecies]
    @JsonKey(name: 'party_species') NamedAPIResource? partySpecies,

    /// The player must have a Pokémon of this type in their party
    /// during the evolution trigger event in order for the evolving Pokémon species
    /// to evolve into this Pokémon species.
    ///
    /// See also:
    ///
    /// [Type]
    @JsonKey(name: 'party_type') NamedAPIResource? partyType,

    /// The required relation between the Pokémon's Attack and Defense stats.
    /// 1 means Attack > Defense. 0 means Attack = Defense. -1 means Attack < Defense.
    @JsonKey(name: 'relative_physical_stats') int? relativePhysicalStats,

    /// The required time of day. Day or night.
    @JsonKey(name: 'time_of_day') String timeOfDay,

    /// Pokémon species for which this one must be traded.
    ///
    /// See also:
    ///
    /// [PokemonSpecies]
    @JsonKey(name: 'trade_species') NamedAPIResource? tradeSpecies,

    /// Whether or not the 3DS needs to be turned upside-down as this Pokémon levels up.
    @JsonKey(name: 'turn_upside_down') bool turnUpsideDown,
  ) = _EvolutionDetail;

  factory EvolutionDetail.fromJson(Json json) =>
      _$EvolutionDetailFromJson(json);
}

@freezed
class EvolutionTrigger with _$EvolutionTrigger {
  const factory EvolutionTrigger(
    /// The identifier for this resource.
    int id,

    /// The name for this resource.
    String name,

    /// The name of this resource listed in different languages.
    List<Name> names,

    /// A list of pokemon species that result from this evolution trigger.
    ///
    /// See also:
    ///
    /// [PokemonSpecies]
    @JsonKey(name: 'pokemon_species') List<NamedAPIResource> pokemonSpecies,
  ) = _EvolutionTrigger;

  factory EvolutionTrigger.fromJson(Json json) =>
      _$EvolutionTriggerFromJson(json);
}
