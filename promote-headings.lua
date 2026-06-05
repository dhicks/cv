-- Promotes all headings up one level (H2 → H1, H3 → H2, etc.)
-- Used by vitae::moderncv so that H2 sections in the source become \section{} in LaTeX.
function Header(el)
  if el.level > 1 then
    el.level = el.level - 1
  end
  return el
end
