import lit.formats
import lit.util
import os
import platform

config.name = 'MyPeepholePassTests'
config.test_format = lit.formats.ShTest(True)
config.suffixes = ['.ll']

lit_config.note(f"DEBUG Stage 1: config.name = {config.name}")
lit_config.note(f"DEBUG Stage 1: config.test_source_root = {config.test_source_root}")
lit_config.note(f"DEBUG Stage 1: config.test_exec_root = {config.test_exec_root}")

llvm_tools_dir = os.environ.get("LLVM_TOOLS_DIR")
if not llvm_tools_dir:
    llvm_tools_dir = "/home/vanya/llvm/llvm-project/build/bin" 
    if not os.path.isdir(llvm_tools_dir):
        lit_config.fatal(f"LLVM_TOOLS_DIR ('{llvm_tools_dir}') not found.")
lit_config.note(f"DEBUG: llvm_tools_dir = {llvm_tools_dir}")

cwd = os.getcwd()
lit_config.note(f"DEBUG: Current Working Directory (os.getcwd()): {cwd}")

plugin_build_dir_candidate = cwd 

if config.test_exec_root is not None:
    plugin_build_dir_candidate = config.test_exec_root
    lit_config.note(f"DEBUG: Using config.test_exec_root for plugin_build_dir: {plugin_build_dir_candidate}")
else:
    lit_config.note(f"DEBUG: config.test_exec_root is None, using CWD for plugin_build_dir: {plugin_build_dir_candidate}")


plugin_name = "MyPeepholePass"
plugin_prefix = "lib" if platform.system() != "Windows" else ""
plugin_extension = ".so"


possible_plugin_paths = [
    os.path.join(plugin_build_dir_candidate, f"{plugin_prefix}{plugin_name}{plugin_extension}"),
    os.path.join(plugin_build_dir_candidate, f"{plugin_name}{plugin_extension}")
]
actual_plugin_path = None
for pp_try in possible_plugin_paths:
    if os.path.isfile(pp_try):
        actual_plugin_path = pp_try
        break

lit_config.note(f"DEBUG: Trying plugin paths: {possible_plugin_paths}")
lit_config.note(f"DEBUG: Found actual_plugin_path: {actual_plugin_path}")

if not actual_plugin_path:
    lit_config.fatal(f"Plugin '{plugin_name}' not found relative to '{plugin_build_dir_candidate}'.")


config.substitutions.append(('%llvm_tools_dir', llvm_tools_dir))
config.substitutions.append(('%opt', os.path.join(llvm_tools_dir, 'opt')))
config.substitutions.append(('%FileCheck', os.path.join(llvm_tools_dir, 'FileCheck')))
config.substitutions.append(('%clang', os.path.join(llvm_tools_dir, 'clang')))

config.substitutions.append(('%load_plugin', f'-load-pass-plugin={actual_plugin_path}'))
config.substitutions.append(('%run_pass', '-passes=mypeepholepass')) # ЗАМЕНИТЕ ИМЯ ПАССА

lit_config.note(f"DEBUG Stage 2: config.name = {config.name}")
lit_config.note(f"DEBUG Stage 2: config.test_source_root = {config.test_source_root}")
lit_config.note(f"DEBUG Stage 2: config.test_exec_root = {config.test_exec_root}")
lit_config.note(f"DEBUG: All substitutions: {config.substitutions}")