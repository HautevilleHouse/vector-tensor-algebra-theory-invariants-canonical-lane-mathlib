import HautevilleHouse.VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.TensorInvariantDecompositionPackages

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure InvariantPolynomialMapPackages {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} (D : TensorInvariantDecompositionPackages T) where
  polynomialMapDefined : Prop
  invariantProperty : Prop
  generatorSetFinite : Prop
  universalPropertyHolds : Prop

structure InvariantPolynomialMapEvidence {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} {D : TensorInvariantDecompositionPackages T} (P : InvariantPolynomialMapPackages D) where
  polynomialMapDefinedClosed : P.polynomialMapDefined
  invariantPropertyClosed : P.invariantProperty
  generatorSetFiniteClosed : P.generatorSetFinite
  universalPropertyHoldsClosed : P.universalPropertyHolds

def InvariantPolynomialMapClosed {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} {D : TensorInvariantDecompositionPackages T} (P : InvariantPolynomialMapPackages D) : Prop :=
  P.polynomialMapDefined ∧ P.invariantProperty ∧ P.generatorSetFinite ∧ P.universalPropertyHolds

theorem invariant_polynomial_map_closed_from_evidence {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} {D : TensorInvariantDecompositionPackages T} (P : InvariantPolynomialMapPackages D) (E : InvariantPolynomialMapEvidence P) : InvariantPolynomialMapClosed P := by
  exact And.intro E.polynomialMapDefinedClosed (And.intro E.invariantPropertyClosed (And.intro E.generatorSetFiniteClosed E.universalPropertyHoldsClosed))

end HautevilleHouse.VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse