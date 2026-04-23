# Snaptext

Extract text from anything visible on your screen — images, paused videos, PDFs, web pages — with a single keyboard shortcut. Select the region with Flameshot, and the text lands straight in your clipboard.

---

## How it works

1. Press `Super + <`
2. Draw a selection around the text you want
3. Done — the text is in your clipboard

No manual steps. No copy-paste. Just select and go.

---

## What you can extract from

- **Images** — photos, screenshots, scanned documents
- **Paused videos** — freeze the frame, select the text
- **PDFs** — when the text isn't selectable
- **Web pages** — when copy is blocked or the content is an image
- **Anything on screen** — if you can see it, you can extract it

---

## Dependencies

```bash
sudo apt install tesseract-ocr tesseract-ocr-spa flameshot xclip
```

---

## Qtile keybinding

```python
Key([mod], "less", lazy.spawn("bash /home/aru/ZX/Projects/Snapt-text/snaptext.sh")),
```

---

## Supported languages

Spanish and English out of the box. To add more:

```bash
sudo apt install tesseract-ocr-<code>   # e.g. tesseract-ocr-fra for French
```

Then add the code to the `-l` flag in `snaptext.sh`.
