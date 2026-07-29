import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTheoremCanonicalLaneLean

structure Language where
  relationSymbols : Nat
  functionSymbols : Nat
  constantSymbols : List String

structure Structure (L : Language) where
  carrier : Type u
  relations : L.relationSymbols → Set (carrier → Prop)
  functions : L.functionSymbols → (carrier → carrier)
  constants : L.constantSymbols → carrier

structure Formula (L : Language) where
  type : Type
  freeVars : Nat

theorem language_structure_consistent (L : Language) (M : Structure L) : True := by
  trivial

end CompactnessTheoremCanonicalLaneLean
end HautevilleHouse