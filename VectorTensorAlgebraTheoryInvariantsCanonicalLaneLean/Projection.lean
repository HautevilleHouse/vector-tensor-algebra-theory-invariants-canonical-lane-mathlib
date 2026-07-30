import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

def tensorInvariantProjection : Projection TensorInvariantObject := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem tensor_invariant_projection_idempotent (x : TensorInvariantObject) :
    tensorInvariantProjection.toFun (tensorInvariantProjection.toFun x) =
    tensorInvariantProjection.toFun x := by
  exact tensorInvariantProjection.idempotent x

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse