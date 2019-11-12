#!/bin/bash
curl -s http://example.com | sed -n '/<div/,/<\/div>/{//!p}' | sed 's/<\/*[^>]*>//g'