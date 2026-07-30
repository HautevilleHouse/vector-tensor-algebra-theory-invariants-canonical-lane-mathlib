import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure VectorTensorBundle where
  baseSpace : Type u
  fiberRank : Nat
  smoothSections : Type v
  tensorProduct : VectorTensorBundle → VectorTensorBundle
  contraction : Prop
  baseSpaceTop : TopologicalSpace baseSpace
  smoothStructure : Prop

define VectorTensorBundleClosed (B : VectorTensorBundle) : Prop :=
  B.smoothStructure ∧ B.contraction

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse