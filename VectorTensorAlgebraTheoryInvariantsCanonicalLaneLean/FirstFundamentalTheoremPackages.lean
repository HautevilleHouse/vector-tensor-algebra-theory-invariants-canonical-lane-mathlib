import HautevilleHouse.VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.InvariantPolynomialMapPackages

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure FirstFundamentalTheoremPackages {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} (D : TensorInvariantDecompositionPackages T) (P : InvariantPolynomialMapPackages D) where
  generatorsIdentified : Prop
  polynomialRelations : Prop
  completenessProved : Prop
  effectiveBound : Prop

structure FirstFundamentalTheoremEvidence {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} {D : TensorInvariantDecompositionPackages T} {P : InvariantPolynomialMapPackages D} (F : FirstFundamentalTheoremPackages D P) where
  generatorsIdentifiedClosed : F.generatorsIdentified
  polynomialRelationsClosed : F.polynomialRelations
  completenessProvedClosed : F.completenessProved
  effectiveBoundClosed : F.effectiveBound

def FirstFundamentalTheoremClosed {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} {D : TensorInvariantDecompositionPackages T} {P : InvariantPolynomialMapPackages D} (F : FirstFundamentalTheoremPackages D P) : Prop :=
  F.generatorsIdentified ∧ F.polynomialRelations ∧ F.completenessProved ∧ F.effectiveBound

theorem first_fundamental_theorem_closed_from_evidence {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} {D : TensorInvariantDecompositionPackages T} {P : InvariantPolynomialMapPackages D} (F : FirstFundamentalTheoremPackages D P) (E : FirstFundamentalTheoremEvidence F) : FirstFundamentalTheoremClosed F := by
  exact And.intro E.generatorsIdentifiedClosed (And.intro E.polynomialRelationsClosed (And.intro E.completenessProvedClosed E.effectiveBoundClosed))

end HautevilleHouse.VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse