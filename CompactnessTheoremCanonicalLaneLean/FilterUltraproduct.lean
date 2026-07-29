import CompactnessTheoremCanonicalLaneLean.Satisfiability
import Mathlib.Data.Set.Lattice
import Mathlib.Order.Filter.Basic

/-!
# Filter and Ultraproduct Package
-/

namespace HautevilleHouse
namespace CompactnessTheoremCanonicalLaneLean

structure FilterUltraproductPackage (L : Language) where
  indexSet : Type u
  ultrafilter : Filter indexSet
  structures : indexSet → Structure L
  ultraproduct : Structure L
  ultraproductDefined : Prop
  losTheorem : Prop

def FilterUltraproductPackage.Closed (F : FilterUltraproductPackage L) : Prop :=
  F.ultraproductDefined ∧ F.losTheorem

structure FilterUltraproductEvidence (L : Language) (F : FilterUltraproductPackage L) where
  ultraproductDefinedClosed : F.ultraproductDefined
  losTheoremClosed : F.losTheorem

theorem filter_ultraproduct_closed_from_evidence (L : Language) (F : FilterUltraproductPackage L) (E : FilterUltraproductEvidence L F) :
  FilterUltraproductPackage.Closed F := by
  exact And.intro E.ultraproductDefinedClosed E.losTheoremClosed

end CompactnessTheoremCanonicalLaneLean
end HautevilleHouse