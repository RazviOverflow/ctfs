import json


def test_chain(links, start, end):
    current = start
    current2 = ''
    for link in links:

        #print("LINK-<>>>>>>>>>>>>>>>>>>> {}".format(link))
        for component in link:
            #print("COMPONENT ->>>>>>>>>>>>{}".format(component))

            current2 += str(int(current & component != 0))

            #print("CURRENT PHASE 1->>>>>>> {}".format(current))
            #print("CURRENT PHASE 2 BY NOW#########->>>>>>> {}".format(current2))
        #print("CURRENT PHASE 2->>>>>>> {}".format(current2))
        current = int(current2, 2)
        #print("CURRENT PHASE 2->>>>>>> {}".format(current2))

    # chain `}`
    # 5846006549505095601839239844712265202587339884680`


    #print(current)
    #print(end)
    return current & end
    #return end == current & end


def main():
    try:
        with open('hyperlink.json', 'r') as f:
            data = json.load(f)
    except IOError:
        print('Could not open hyperlink.json')
        return

    print('Welcome to the chain building game.')
    
    print("START:\n{}\nTARGET:\n{}".format(data['start'], data['target']))

    for link in data['links']:
        print("TESTING LINK -> {}".format(link))
        print(test_chain([data['links'][link]], data['start'], data['target']))
        #print(data['links'][link])

    print('Enter a chain and see if it works:')

    chain = input()

    legal_chars = set('abcdefghijklmnopqrstuvwxyz{}_')
    if any(c not in legal_chars for c in chain):
        print('Chain contains illegal characters!')
        return

    try:
        links = [data['links'][c] for c in chain]
        result = test_chain(links, data['start'], data['target'])
    except Exception:
        print('Something went wrong!')
        return

    if result:
        print('Chain works! Congratulations.')
    else:
        print('Oh no! Chain does not reach the target.')


if __name__ == '__main__':
    main()
