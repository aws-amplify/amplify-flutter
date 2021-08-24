# Include common tooling
def include_build_tools!
    # Pin to 0.44.17 until we resolve closing braces
    pod 'SwiftFormat/CLI', '0.44.17'
    pod 'SwiftLint'
end
