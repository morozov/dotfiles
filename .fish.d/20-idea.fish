for p in "/Applications/IntelliJ IDEA.app/Contents/MacOS" \
         "/Applications/CLion.app/Contents/MacOS" \
         "/Applications/PhpStorm.app/Contents/MacOS" \
         "/Applications/PyCharm.app/Contents/MacOS" \
         "/Applications/Rider.app/Contents/MacOS"
    if [ -d $p ]
        fish_add_path $p
    end
end
