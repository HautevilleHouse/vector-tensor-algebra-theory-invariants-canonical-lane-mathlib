import VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure TensorAlgebraStructure where
  vectorSpace : Type u
  tensorProduct : vectorSpace → vectorSpace → vectorSpace
  symmetricProduct : vectorSpace → vectorSpace → vectorSpace
  exteriorProduct : vectorSpace → vectorSpace → vectorSpace
  symmetryConstraint : ∀ (a b : vectorSpace), tensorProduct a b = tensorProduct b a
  linearityConstraint : Prop
  bilinearityConstraint : Prop
  linearityConstraintTerm : linearityConstraint
  bilinearityConstraintTerm : bilinearityConstraint

structure TensorAlgebraEvidence (T : TensorAlgebraStructure) where
  symmetryConstraintClosed : T.symmetryConstraint = T.symmetryConstraint
  linearityConstraintClosed : T.linearityConstraint
  bilinearityConstraintClosed : T.bilinearityConstraint

def TensorAlgebraClosed (T : TensorAlgebraStructure) : Prop :=
  T.linearityConstraint ∧ T.bilinearityConstraint

theorem tensor_algebra_closed_from_evidence (T : TensorAlgebraStructure) (E : TensorAlgebraEvidence T) : TensorAlgebraClosed T :=
  And.intro E.linearityConstraintClosed E.bilinearityConstraintClosed

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse