import HautevilleHouse.VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.TensorInvariantDecompositionPackages

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure CayleyHamiltonProcessPackages {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} (D : TensorInvariantDecompositionPackages T) where
  characteristicPolynomial : Prop
  cayleyHamiltonIdentity : Prop
  traceInvariantRelationship : Prop
  determinantInvariantRelationship : Prop

structure CayleyHamiltonProcessEvidence {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} {D : TensorInvariantDecompositionPackages T} (C : CayleyHamiltonProcessPackages D) where
  characteristicPolynomialClosed : C.characteristicPolynomial
  cayleyHamiltonIdentityClosed : C.cayleyHamiltonIdentity
  traceInvariantRelationshipClosed : C.traceInvariantRelationship
  determinantInvariantRelationshipClosed : C.determinantInvariantRelationship

def CayleyHamiltonProcessClosed {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} {D : TensorInvariantDecompositionPackages T} (C : CayleyHamiltonProcessPackages D) : Prop :=
  C.characteristicPolynomial ∧ C.cayleyHamiltonIdentity ∧ C.traceInvariantRelationship ∧ C.determinantInvariantRelationship

theorem cayley_hamilton_process_closed_from_evidence {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} {D : TensorInvariantDecompositionPackages T} (C : CayleyHamiltonProcessPackages D) (E : CayleyHamiltonProcessEvidence C) : CayleyHamiltonProcessClosed C := by
  exact And.intro E.characteristicPolynomialClosed (And.intro E.cayleyHamiltonIdentityClosed (And.intro E.traceInvariantRelationshipClosed E.determinantInvariantRelationshipClosed))

end HautevilleHouse.VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse