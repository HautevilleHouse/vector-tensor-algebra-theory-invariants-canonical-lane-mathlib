import VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure VectorTensorSpace where
  carrier : Type
  tensorProduct : carrier → carrier → carrier
  scalarMultiplication : ℝ → carrier → carrier
  bilinearForm : carrier → carrier → ℝ

def invariantCondition (V : VectorTensorSpace) : Prop :=
  ∀ (x y z : V.carrier), V.bilinearForm (V.tensorProduct x y) z = V.bilinearForm x (V.tensorProduct y z)

structure VectorTensorAdmittedObject where
  space : VectorTensorSpace
  invariantHolds : Prop
  decompositionExists : Prop
  conclusion : invariantHolds ∧ decompositionExists

def VectorTensorWitnessClosed (O : VectorTensorAdmittedObject) : Prop :=
  O.invariantHolds ∧ O.decompositionExists

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse