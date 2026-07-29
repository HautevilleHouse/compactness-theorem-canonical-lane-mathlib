import CompactnessTheoremCanonicalLaneLean.FilterUltraproduct
import CompactnessTheoremCanonicalLaneLean.Satisfiability

/-!
# Compactness Theorem Core Package
-/

namespace HautevilleHouse
namespace CompactnessTheoremCanonicalLaneLean

structure CompactnessTheoremPackage (L : Language) (S : SatisfiabilityPackage L) (F : FilterUltraproductPackage L) where
  finiteSatisfiable : S.finiteSatisfiable
  ultraproductBuilt : F.ultraproductDefined
  losApplied : F.losTheorem
  satisfiableDerived : S.satisfiable
  ultraproductConstructedFromFilter : Prop
  proofComplete : Prop

def CompactnessTheoremPackage.Closed (C : CompactnessTheoremPackage L S F) : Prop :=
  C.finiteSatisfiable ∧ C.ultraproductBuilt ∧ C.losApplied ∧ C.satisfiableDerived ∧ C.ultraproductConstructedFromFilter ∧ C.proofComplete

structure CompactnessTheoremEvidence (L : Language) (S : SatisfiabilityPackage L) (F : FilterUltraproductPackage L) (C : CompactnessTheoremPackage L S F) where
  finiteSatisfiableClosed : C.finiteSatisfiable
  ultraproductBuiltClosed : C.ultraproductBuilt
  losAppliedClosed : C.losApplied
  satisfiableDerivedClosed : C.satisfiableDerived
  ultraproductConstructedFromFilterClosed : C.ultraproductConstructedFromFilter
  proofCompleteClosed : C.proofComplete

theorem compactness_theorem_closed_from_evidence (L : Language) (S : SatisfiabilityPackage L) (F : FilterUltraproductPackage L) (C : CompactnessTheoremPackage L S F) (E : CompactnessTheoremEvidence L S F C) :
  CompactnessTheoremPackage.Closed C := by
  exact And.intro E.finiteSatisfiableClosed
    (And.intro E.ultraproductBuiltClosed
      (And.intro E.losAppliedClosed
        (And.intro E.satisfiableDerivedClosed
          (And.intro E.ultraproductConstructedFromFilterClosed E.proofCompleteClosed))))

theorem compactness_from_finite_satisfiability (L : Language) (S : SatisfiabilityPackage L) (h : S.finiteSatisfiable) :
  ∃ (F : FilterUltraproductPackage L), CompactnessTheoremPackage.Closed (CompactnessTheoremPackage.mk h (by sorry) (by sorry) (by sorry) (by sorry) (by sorry)) := by
  sorry

end CompactnessTheoremCanonicalLaneLean
end HautevilleHouse