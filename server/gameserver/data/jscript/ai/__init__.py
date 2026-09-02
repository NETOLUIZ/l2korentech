__all__ = [
'group_template',
'individual'
]
print ""
print "AIManager: Importing AI Data Please Wait..."
for name in __all__ :
    try :
        __import__('data.jscript.ai.'+name,globals(), locals(), ['__init__'], -1)
    except :
        print "AIManager: Failed To Import AI Data: ",name
print"AIManager: All AI Data Load Complete."
print ""

# L2jnet