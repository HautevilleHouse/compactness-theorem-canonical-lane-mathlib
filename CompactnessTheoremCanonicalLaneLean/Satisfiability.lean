import CompactnessTheoremCanonicalLaneLean.ModelTheorySyntax

/-!
# Satisfiability and Finite Satisfiability Package
-/

namespace HautevilleHouse
namespace CompactnessTheoremCanonicalLaneLean

structure SatisfiabilityPackage (L : Language) where
  sentenceSet : List (Sentence L)
  satisfiable : Prop
  finiteSatisfiable : Prop

def SatisfiabilityPackage.Closed (S : SatisfiabilityPackage L) : Prop :=
  S.satisfiable ∧ S.finiteSatisfiable

structure SatisfiabilityEvidence (L : Language) (S : SatisfiabilityPackage L) where
  satisfiableClosed : S.satisfiable
  finiteSatisfiableClosed : S.finiteSatisfiable

theorem satisfiability_closed_from_evidence (L : Language) (S : SatisfiabilityPackage L) (E : SatisfiabilityEvidence L S) :
  SatisfiabilityPackage.Closed S := by
  exact And.intro E.satisfiableClosed E.finiteSatisfiableClosed

end CompactnessTheoremCanonicalLaneLean
end HautevilleHouse