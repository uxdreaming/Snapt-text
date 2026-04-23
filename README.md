# Snaptext

Capture text from anywhere on your screen with a keyboard shortcut. Select a region with Flameshot, the text is extracted via OCR and copied straight to your clipboard.

## Dependencies

```bash
sudo apt install tesseract-ocr tesseract-ocr-spa flameshot xclip
```

## Usage

`Super + <` — select a region — text lands in your clipboard.

## Qtile keybinding

```python
Key([mod], "less", lazy.spawn("bash /home/aru/ZX/Projects/Snapt-text/snaptext.sh")),
```

## Supported languages

Spanish and English simultaneously (`-l spa+eng`). To add another language:

```bash
sudo apt install tesseract-ocr-<code>   # e.g. tesseract-ocr-fra
```

Then add the language code to the `-l` flag in the script.
