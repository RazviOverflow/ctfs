# Written by Anirudh Anand (lucif3r) : email - anirudh@anirudhanand.com   
# This program will help to decrypt cipher text to plain text if you have
# more than 1 cipher text encrypted with same Modulus (N) but different
# exponents. We use extended Euclideangm Algorithm to achieve this.
import gmpy2


class RSAModuli:
  def __init__(self):
    self.a = 0
    self.b = 0
    self.m = 0
    self.i = 0
  
  def gcd(self, num1, num2):
    """
    This function os used to find the GCD of 2 numbers.
    :param num1:
    :param num2:
    :return:
    """
    if num1 < num2:
      num1, num2 = num2, num1
      while num2 != 0:
        num1, num2 = num2, num1 % num2
        return num1
        
  def extended_euclidean(self, e1, e2):
    """
    The value a is the modular multiplicative inverse of e1 and e2.
    b is calculated from the eqn: (e1*a) + (e2*b) = gcd(e1, e2)
    :param e1: exponent 1
    :param e2: exponent 2
    """
    self.a = gmpy2.invert(e1, e2)
    self.b = (float(self.gcd(e1, e2)-(self.a*e1)))/float(e2)

  def modular_inverse(self, c1, c2, N):
    """
    i is the modular multiplicative inverse of c2 and N.
    i^-b is equal to c2^b. So if the value of b is -ve, we
    have to find out i and then do i^-b.
    Final plain text is given by m = (c1^a) * (i^-b) %N
    :param c1: cipher text 1
    :param c2: cipher text 2
    :param N: Modulus
    """
    i = gmpy2.invert(c2, N)
    mx = pow(c1, self.a, N)
    my = pow(i, int(-self.b), N)
    self.m= mx * my % N
  
  def print_value(self):
    print("Plain Text: ", self.m)


def main():
  c = RSAModuli()
  N  = 139139098166563368793906426353584775685986156985503895898108450666153804152721077328595298405359402968586164698349127474583831260369056674398122221948323174927823244488759235828048733639655945179009496153393829487742364880448642168094375012523825513069073691277215422154080122721414171233541059159461497574851
  c1 = 36251028222184669113487409017454975826565106104917435244458509025325597595097437837292486054294655693705631371301937875354932194238774646471806718003961847732817524682493697446263462385101163784046225206169381882321268194820701612704489320707217757417267296259559235617734319007884212443563740615946094992859
  c2 = 15688769307556061961218947783212296596344168555685824671642275978089568687312912139032947498393471032926950577032514983014105921115080590723699988614214232859981728991429978617821297278877767993295441070537327281816259747634098763766785395724275437311610210946257742159892825472332345447909363995349523623705
  e1 = 8589547526045561461552680248279757835979283889671962732842177455697481270376746567989084136626965959183030099272662143191917717068451310686662922269968037
  e2 = 1550875426281080713285640421891864359643668278531602865211049325478612197772168543099328132747062677256718488137967707434694189218634201660188716505159465
  c.extended_euclidean(e1, e2)
  c.modular_inverse(c1, c2, N)
  c.print_value()

if __name__ == '__main__':
  main()