import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure InvariantPolynomialsPackage where
  polynomialGenerators : List (List Nat)
  invariantUnderGroup : Prop
  completeness : Prop
  syzygyRelations : Prop

structure InvariantPolynomialsEvidence (P : InvariantPolynomialsPackage) where
  invariantUnderGroupClosed : P.invariantUnderGroup
  completenessClosed : P.completeness
  syzygyRelationsClosed : P.syzygyRelations

def InvariantPolynomialsClosed (P : InvariantPolynomialsPackage) : Prop :=
  P.invariantUnderGroup ∧ P.completeness ∧ P.syzygyRelations

theorem invariant_polynomials_closed_from_evidence (P : InvariantPolynomialsPackage) (E : InvariantPolynomialsEvidence P) : InvariantPolynomialsClosed P := by
  exact And.intro E.invariantUnderGroupClosed (And.intro E.completenessClosed E.syzygyRelationsClosed)

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse