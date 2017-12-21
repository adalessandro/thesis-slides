#!/bin/bash
sed -i 's/\\\\/\n/g' slides.pdfpc
sed -i 's/\\par/\n\n/g' slides.pdfpc
