import HautevilleHouse.VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean.FirstFundamentalTheoremPackages

namespace HautevilleHouse
namespace VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean

structure SecondFundamentalTheoremPackages {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} (D : TensorInvariantDecompositionPackages T) (P : InvariantPolynomialMapPackages D) (F : FirstFundamentalTheoremPackages D P) where
  syzygyModuleDescribed : Prop
  resolutionFinite : Prop
  completeSetOfRelations : Prop
  generatorsMinimal : Prop

structure SecondFundamentalTheoremEvidence {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} {D : TensorInvariantDecompositionPackages T} {P : InvariantPolynomialMapPackages D} {F : FirstFundamentalTheoremPackages D P} (S : SecondFundamentalTheoremPackages D P F) where
  syzygyModuleDescribedClosed : S.syzygyModuleDescribed
  resolutionFiniteClosed : S.resolutionFinite
  completeSetOfRelationsClosed : S.completeSetOfRelations
  generatorsMinimalClosed : S.generatorsMinimal

def SecondFundamentalTheoremClosed {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} {D : TensorInvariantDecompositionPackages T} {P : InvariantPolynomialMapPackages D} {F : FirstFundamentalTheoremPackages D P} (S : SecondFundamentalTheoremPackages D P F) : Prop :=
  S.syzygyModuleDescribed ∧ S.resolutionFinite ∧ S.completeSetOfRelations ∧ S.generatorsMinimal

theorem second_fundamental_theorem_closed_from_evidence {G : ScalarFieldPackage} {V : VectorBundlePackage G} {T : TensorAlgebraPackage G V} {D : TensorInvariantDecompositionPackages T} {P : InvariantPolynomialMapPackages D} {F : FirstFundamentalTheoremPackages D P} (S : SecondFundamentalTheoremPackages D P F) (E : SecondFundamentalTheoremEvidence S) : SecondFundamentalTheoremClosed S := by
  exact And.intro E.syzygyModuleDescribedClosed (And.intro E.resolutionFiniteClosed (And.intro E.completeSetOfRelationsClosed E.generatorsMinimalClosed))

end HautevilleHouse.VectorTensorAlgebraTheoryInvariantsCanonicalLaneLean
end HautevilleHouse