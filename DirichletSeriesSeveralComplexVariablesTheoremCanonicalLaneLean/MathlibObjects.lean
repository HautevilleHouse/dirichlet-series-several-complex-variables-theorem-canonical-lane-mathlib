import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Complex.Basic
import Mathlib.Analysis.Complex.Polynomial

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean

universe u

structure DirichletSeriesData where
  coefficients : ℕ → ℂ
  abscissa : ℝ
  domain : Set ℂ

def trivialDirichletSeries : DirichletSeriesData := {
  coefficients := λ _ => 0
  abscissa := 0
  domain := Set.univ
}

structure AdmittedTheoremObject where
  data : DirichletSeriesData
  bridgeWitness : Prop
  classicalCarry : Prop

end DirichletSeriesSeveralComplexVariablesTheoremCanonicalLaneLean
end HautevilleHouse
