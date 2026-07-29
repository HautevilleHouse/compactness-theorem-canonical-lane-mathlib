import CompactnessTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def compactnessProjection : Projection CompactnessEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl
  }

theorem compactness_projection_idempotent (x : CompactnessEndgameState) :
    compactnessProjection.toFun (compactnessProjection.toFun x) = compactnessProjection.toFun x := by
  exact compactnessProjection.idempotent x

end CompactnessTheoremCanonicalLaneLean
end HautevilleHouse