# Justfile for Minimalist Web Hugo Theme development

# Start Hugo development server
dev:
    hugo server --source exampleSite --themesDir ../.. --navigateToChanged --buildDrafts

# Build the example site
build:
    hugo --source exampleSite --themesDir ../.. --destination public

# Clean build artifacts
clean:
    rm -rf exampleSite/public exampleSite/resources

# Run Hugo with drafts and future posts
dev-all:
    hugo server --source exampleSite --themesDir ../.. --buildDrafts --buildFuture

# Validate theme (check for template errors)
validate:
    hugo --source exampleSite --themesDir ../.. --templateMetrics --printPathWarnings

# Build with verbose output for debugging
debug:
    hugo --source exampleSite --themesDir ../.. --logLevel debug --templateMetrics

# Create a new post in the example site
new-post title:
    hugo new content/posts/{{ title }}.md --source exampleSite

# View the built site (requires build to be run first)
serve-built:
    cd exampleSite/public && python3 -m http.server 8000

# Check Hugo version
version:
    hugo version

# Install/update Hugo (requires flox)
install:
    @echo "Hugo should be installed via flox environment"
    @echo "Run: flox activate"
