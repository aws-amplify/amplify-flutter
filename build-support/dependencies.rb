$swift_version = "5.0"

# Include common tooling
def include_build_tools!
    # Pin to 0.44.17 until we resolve closing braces
    pod 'SwiftFormat/CLI', '0.44.17'
    pod 'SwiftLint', '0.48.0'
end

$lint_script = <<-EOF
    CONFIG_FILE="${SRCROOT}/../../../../../.swiftformat"
    if [[ -e "${CONFIG_FILE}" ]]; then
        "${PODS_ROOT}/SwiftFormat/CommandLineTool/swiftformat" --config "${CONFIG_FILE}" --swiftversion "#{$swift_version}" "${SRCROOT}/../.symlinks/plugins/${PRODUCT_NAME}/ios"
    fi 
EOF

$format_script = <<-EOF
    CONFIG_FILE="${SRCROOT}/../../../../../.swiftlint.yml"
    if [[ -e "${CONFIG_FILE}" ]]; then 
        "${PODS_ROOT}/SwiftLint/swiftlint" --config "${CONFIG_FILE}" --path "${SRCROOT}/../.symlinks/plugins/${PRODUCT_NAME}/ios"
    fi
EOF

$default_script_phases = [
    # Format build phase
    {
        :name => 'SwiftFormat',
        :script => $lint_script,
        :execution_position => :before_compile
    },

    # Lint build phase
    {
        :name => 'SwiftLint',
        :script => $format_script,
        :execution_position => :before_compile
    },
]

def get_plugin_dir(plugin_name)
    return File.join('.symlinks', 'plugins', plugin_name, 'ios')
end
