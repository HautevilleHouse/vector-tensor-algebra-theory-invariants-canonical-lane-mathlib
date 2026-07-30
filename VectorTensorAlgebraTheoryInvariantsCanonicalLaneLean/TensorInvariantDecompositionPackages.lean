import HautevilleHouse.VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure TensorInvariantDecompositionPackages {G : ScalarFieldPackage} {V : VectorBundlePackage G} (T : TensorAlgebraPackage G V) where
  tensorProductRepresentation : Type
  irreducibleDecomposition : Prop
  invariantFactorsDecomposition : Prop
  canonicalFormInvariants : Prop

structure TensorInvariantDecompositionEvidence {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} (D : TensorInvariantDecompositionPackages T) where
  tensorProductRepresentationClosed : D.tensorProductRepresentation
  irreducibleDecompositionClosed : D.irreducibleDecomposition
  invariantFactorsDecompositionClosed : D.invariantFactorsDecomposition
  canonicalFormInvariantsClosed : D.canonicalFormInvariants

def TensorInvariantDecompositionClosed {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} (D : TensorInvariantDecompositionPackages T) : Prop :=
  D.tensorProductRepresentation ∧ D.irreducibleDecomposition ∧ D.invariantFactorsDecomposition ∧ D.canonicalFormInvariants

theorem tensor_invariant_decomposition_closed_from_evidence {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} (D : TensorInvariantDecompositionPackages T) (E : TensorInvariantDecompositionEvidence D) : TensorInvariantDecompositionClosed D := by
  exact And.intro E.tensorProductRepresentationClosed (And.intro E.irreducibleDecompositionClosed (And.intro E.invariantFactorsDecompositionClosed E.canonicalFormInvariantsClosed))

end HautevilleHouse.VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse