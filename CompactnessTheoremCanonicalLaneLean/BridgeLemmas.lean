import CompactnessTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CompactnessTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CompactnessWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CompactnessTheoremCanonicalLaneLean
end HautevilleHouse