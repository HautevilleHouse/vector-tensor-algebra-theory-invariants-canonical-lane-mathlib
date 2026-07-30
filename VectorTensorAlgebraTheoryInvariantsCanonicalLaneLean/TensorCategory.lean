import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure TensorCategory where
  objects : Type u
  morphisms : Type v
  tensorProduct : objects → objects → objects
  associator : Prop
  unitObject : objects
  leftUnitor : Prop
  rightUnitor : Prop
  braiding : Prop

define TensorCategoryClosed (C : TensorCategory) : Prop :=
  C.associator ∧ C.leftUnitor ∧ C.rightUnitor ∧ C.braiding

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse