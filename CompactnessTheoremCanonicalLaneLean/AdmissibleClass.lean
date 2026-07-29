import CompactnessTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CompactnessTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CompactnessAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CompactnessWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompactnessTheoremCanonicalLaneLean
end HautevilleHouse