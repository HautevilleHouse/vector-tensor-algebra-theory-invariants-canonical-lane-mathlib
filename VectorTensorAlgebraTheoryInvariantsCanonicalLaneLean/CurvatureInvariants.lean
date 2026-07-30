import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure CurvatureInvariantsPackage where
  riemannCurvature : Type u
  ricciCurvature : Type v
  scalarCurvature : Type w
  weylTensor : Type x
  curvatureInvariantConditions : Prop
  decompositionIntoIrreducibles : Prop
  invariantPolynomials : Prop

structure CurvatureInvariantsEvidence (C : CurvatureInvariantsPackage) where
  curvatureInvariantConditionsClosed : C.curvatureInvariantConditions
  decompositionIntoIrreduciblesClosed : C.decompositionIntoIrreducibles
  invariantPolynomialsClosed : C.invariantPolynomials

def CurvatureInvariantsClosed (C : CurvatureInvariantsPackage) : Prop :=
  C.curvatureInvariantConditions ∧ C.decompositionIntoIrreducibles ∧
  C.invariantPolynomials

theorem curvature_invariants_closed_from_evidence
    (C : CurvatureInvariantsPackage) (E : CurvatureInvariantsEvidence C) :
    CurvatureInvariantsClosed C := by
  exact And.intro E.curvatureInvariantConditionsClosed
    (And.intro E.decompositionIntoIrreduciblesClosed
      E.invariantPolynomialsClosed)

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse