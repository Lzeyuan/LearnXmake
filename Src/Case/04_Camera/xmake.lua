add_rules("mode.release", "mode.debug")

target("04_Camera")
    set_targetdir(path.join("$(projectdir)", "build", "$(host)", "$(arch)", "$(mode)", "04_Camera"))

    set_kind("binary")
    add_files("*.cpp")
    
    add_deps("base")

    after_build(function (target)
      print("before_build")
      print("copying resource " .." to " .. target:targetdir())
      os.cp(path.join("$(scriptdir)", "Resources"), target:targetdir())
    end)
