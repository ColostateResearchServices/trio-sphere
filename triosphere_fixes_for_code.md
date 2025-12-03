# TrioSphere Header & Footer Changes Needed

## HEADER ISSUES & FIXES

### Current Problem:
The CSU header and TrioSphere navigation are separated into two distinct sections. The CSU logo appears alone at the top, then the TrioSphere nav bar is below it.

### Desired Outcome (matching One Health):
The header should be one integrated unit:
1. **Top section**: Full-width green bar with:
   - Left: CSU ram logo + "COLORADO STATE UNIVERSITY" text (white, bold)
   - Right: "VICE PRESIDENT FOR RESEARCH" text (white)
   - All on the same green background (#1E4D2B)

2. **Second section**: Another full-width green bar (same color) with:
   - Left: "One Health" branding with icon
   - Right: "Give" button
   - This is where TrioSphere navigation should be

### Specific Changes Needed:

**For the CSU official header section:**
- Background should be CSU green (#1E4D2B), not white
- CSU ram logo and "COLORADO STATE UNIVERSITY" should be on the LEFT side
- "VICE PRESIDENT FOR RESEARCH" should be on the RIGHT side  
- Both should be in the SAME horizontal bar
- Text should be white, not green
- Logo should be white/light colored, not dark

**For the TrioSphere navigation section:**
- This should be DIRECTLY below the CSU header (no gap)
- Same CSU green background
- Keep "TrioSphere" branding on left
- Keep navigation links (Home, Data, About) in center
- Keep the gold buttons (CSU One Health, CSU DSRI) on right

---

## FOOTER ISSUES & FIXES

### Issue 1: Social Media Icons Layout

**Current**: Icons are stacked VERTICALLY (one above another)
```
[Facebook icon]
[Twitter icon]  
[LinkedIn icon]
```

**Desired**: Icons should be in a HORIZONTAL row
```
[Facebook icon]  [Twitter icon]  [LinkedIn icon]
```

**Fix**: 
- Change CSS for `.footer-social` to use `display: flex` or `display: inline-block`
- Icons should have horizontal spacing between them (like `margin: 0 15px`)
- Remove any block-level display that's stacking them vertically

---

### Issue 2: Missing Gold Separator Line

**Current**: No visible line between the light green social section and dark green OVPR section

**Desired**: A gold/tan colored horizontal line separating these sections

**Fix**:
- Add a border or separator element
- Color should be CSU Gold (#C8C372) or similar tan/gold color
- Should be about 2-4px thick
- Spans full width

---

### Issue 3: OVPR Text Alignment

**Current**: "OVPR Office Information" is CENTERED

**Desired**: "OVPR Office Information" should be LEFT-ALIGNED (with some left padding/margin)

**Fix**:
- Change `text-align: center` to `text-align: left`
- Add left padding (maybe 40-60px) to match the alignment of links in bottom section

---

### Issue 4: Footer Bottom Section Spacing

**Current**: Layout looks okay but spacing might be off

**Desired**: 
- Links and copyright should be LEFT-aligned with comfortable left padding
- CSU logo should be RIGHT-aligned  
- Both sections should have similar vertical alignment

**Check**: Make sure the two-column grid is working properly on desktop

---

## COLOR REFERENCE

- **CSU Green (primary)**: #1E4D2B
- **Light Green (social media background)**: #59B359 or similar
- **CSU Gold (separator/buttons)**: #C8C372
- **White text**: #FFFFFF

---

## TESTING CHECKLIST

After making changes, verify:
- [ ] Header: CSU logo + text are on left, department on right, same bar
- [ ] Header: White text on green background
- [ ] Header: TrioSphere nav is directly below (no gap)
- [ ] Footer: Social icons in horizontal row
- [ ] Footer: Gold line separates sections
- [ ] Footer: "OVPR Office Information" is left-aligned
- [ ] Footer: Bottom section has proper spacing
- [ ] Footer: CSU logo appears on right side of bottom section

---

## KEY CSS FIXES NEEDED

### For Footer Social Icons:
```css
.footer-social {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 20px;  /* or use margin on each icon */
}

.footer-social a {
    display: inline-block;  /* NOT block */
}
```

### For Gold Separator:
```css
.footer-info {
    border-top: 3px solid #C8C372;  /* CSU Gold */
}
```

### For OVPR Alignment:
```css
.footer-info {
    text-align: left;
    padding-left: 60px;  /* Match other sections */
}
```

### For CSU Header Integration:
```css
#BrandLogo {
    background-color: #1E4D2B;  /* CSU Green */
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px 40px;
}

#BrandLogo h1, 
#BrandLogo h2 {
    color: white;
}

#BrandLogo h1 {
    /* Left side */
}

#BrandLogo h2 {
    /* Right side */
}
```
