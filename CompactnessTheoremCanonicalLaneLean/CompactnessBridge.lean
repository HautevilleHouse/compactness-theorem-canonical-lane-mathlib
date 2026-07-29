import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompactnessTheoremCanonicalLaneLean.ModelTheorySyntax

namespace HautevilleHouse
namespace CompactnessTheoremCanonicalLaneLean

structure CompactnessModel where
  theory : Prop
  finiteSatisfiable : Prop
  satisfiable : Prop

structure CompactnessAdmissibleClass extends AdmissibleClass where
  model : CompactnessModel
  finiteSatisfiableClosed : model.finiteSatisfiable
  satisfiableClosed : model.satisfiable

theorem bridge_from_compactness_admissible_class (A : CompactnessAdmissibleClass) :
    bridgeClosed A := by
  exact bridge_from_admissible_class A

theorem gate_from_compactness_admissible_class (A : CompactnessAdmissibleClass) :
    gateClosed A := by
  exact gate_from_admissible_class A

theorem compactness_endgame (A : CompactnessAdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_compactness_admissible_class A) (gate_from_compactness_admissible_class A)

end CompactnessTheoremCanonicalLaneLean
end HautevilleHouse