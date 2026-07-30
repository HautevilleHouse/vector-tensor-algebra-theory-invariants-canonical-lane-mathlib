import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure InvariantDecompositionPackage where
  tensorBundles : Type u
  irreduciblesClassified : Prop
  decompositionCanonical : Prop
  invariantSubspaces : Prop
  decompositionComplete : Prop

structure InvariantDecompositionEvidence (D : InvariantDecompositionPackage) where
  irreduciblesClassifiedClosed : D.irreduciblesClassified
  decompositionCanonicalClosed : D.decompositionCanonical
  invariantSubspacesClosed : D.invariantSubspaces
  decompositionCompleteClosed : D.decompositionComplete

def InvariantDecompositionClosed (D : InvariantDecompositionPackage) : Prop :=
  D.irreduciblesClassified ∧ D.decompositionCanonical ∧
  D.invariantSubspaces ∧ D.decompositionComplete

theorem invariant_decomposition_closed_from_evidence
    (D : InvariantDecompositionPackage) (E : InvariantDecompositionEvidence D) :
    InvariantDecompositionClosed D := by
  exact And.intro E.irreduciblesClassifiedClosed
    (And.intro E.decompositionCanonicalClosed
      (And.intro E.invariantSubspacesClosed E.decompositionCompleteClosed))

end VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse