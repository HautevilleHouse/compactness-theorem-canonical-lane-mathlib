import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTheoremCanonicalLaneLean

structure CompactnessSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CompactnessAdmittedObject where
  space : CompactnessSpace
  isCompact : Prop
  isHausdorff : Prop
  conclusion : isCompact

def CompactnessWitnessClosed (O : CompactnessAdmittedObject) : Prop :=
  O.isCompact

end CompactnessTheoremCanonicalLaneLean
end HautevilleHouse
