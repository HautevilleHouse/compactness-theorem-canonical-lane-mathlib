import compactnessTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTheoremCanonicalLaneLean

structure CompactnessAdmittedObject where
  firstOrderLanguage : Type u
  signature : Type v
  theory : Set (Formula firstOrderLanguage)
  modelExists : Prop
  finiteModelsExist : Prop
  conclusion : modelExists
theorem compactness_first_principles_model_existence (A : CompactnessAdmittedObject) : A.modelExists := A.conclusion

end CompactnessTheoremCanonicalLaneLean
end HautevilleHouse
