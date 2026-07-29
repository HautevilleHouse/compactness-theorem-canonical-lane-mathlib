import CompactnessTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CompactnessTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CompactnessSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CompactnessAdmittedObject where
  space : CompactnessSpace
  topologicalCompactness : Prop
  finiteIntersectionProperty : Prop
  model : Type
  modelTopology : TopologicalSpace model
  compactModel : Prop
  conclusion : compactModel

structure CompactnessEndgameState where
  object : CompactnessAdmittedObject

def CompactnessWitnessClosed (O : CompactnessAdmittedObject) : Prop :=
  O.compactModel

end CompactnessTheoremCanonicalLaneLean
end HautevilleHouse