import VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.InvariantDecomposition

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure WeylTensorInvariant (V : Type u) [AddCommGroup V] [Module ℝ V] {T : TensorProductStructure V} {D : InvariantDecomposition V T} where
  weylTensor : Type u
  tracelessCondition : Prop
  conformalInvariance : Prop
  decompositionMapping : Prop
  tracelessConditionClosed : tracelessCondition
  conformalInvarianceClosed : conformalInvariance
  decompositionMappingClosed : decompositionMapping

structure WeylTensorInvariantEvidence (V : Type u) [AddCommGroup V] [Module ℝ V] {T : TensorProductStructure V} {D : InvariantDecomposition V T} (W : WeylTensorInvariant V T D) where
  tracelessConditionClosed : W.tracelessCondition
  conformalInvarianceClosed : W.conformalInvariance
  decompositionMappingClosed : W.decompositionMapping

def WeylTensorInvariantClosed (V : Type u) [AddCommGroup V] [Module ℝ V] {T : TensorProductStructure V} {D : InvariantDecomposition V T} (W : WeylTensorInvariant V T D) : Prop :=
  W.tracelessCondition ∧ W.conformalInvariance ∧ W.decompositionMapping

theorem weyl_tensor_invariant_closed_from_evidence (V : Type u) [AddCommGroup V] [Module ℝ V] {T : TensorProductStructure V} {D : InvariantDecomposition V T} (W : WeylTensorInvariant V T D) (E : WeylTensorInvariantEvidence V T D W) :
    WeylTensorInvariantClosed V T D W := by
  exact And.intro E.tracelessConditionClosed (And.intro E.conformalInvarianceClosed E.decompositionMappingClosed)

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse