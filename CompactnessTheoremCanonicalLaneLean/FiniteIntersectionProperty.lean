import compactnessTheoremCanonicalLaneLean.CompactnessFirstPrinciples

namespace HautevilleHouse
namespace CompactnessTheoremCanonicalLaneLean

structure FiniteIntersectionProperty (A : CompactnessAdmittedObject) where
  finiteSatisfiable : Prop
  intersectionClosed : Prop
  evidence : finiteSatisfiable ∧ intersectionClosed

def FiniteIntersectionPropertyClosed (A : CompactnessAdmittedObject) : Prop :=
  ∃ (FIP : FiniteIntersectionProperty A), FIP.finiteSatisfiable ∧ FIP.intersectionClosed

theorem finiteIntersectionProperty_closed_from_evidence (A : CompactnessAdmittedObject) (FIP : FiniteIntersectionProperty A) : FiniteIntersectionPropertyClosed A := by
  refine ⟨FIP, FIP.evidence.1, FIP.evidence.2⟩

end CompactnessTheoremCanonicalLaneLean
end HautevilleHouse
