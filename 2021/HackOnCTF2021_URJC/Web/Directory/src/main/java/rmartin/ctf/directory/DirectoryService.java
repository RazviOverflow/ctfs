package rmartin.ctf.directory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ldap.core.AttributesMapper;
import org.springframework.ldap.core.LdapTemplate;
import org.springframework.ldap.support.LdapNameBuilder;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import javax.naming.Name;
import javax.naming.directory.Attributes;
import javax.naming.directory.BasicAttribute;
import javax.naming.directory.BasicAttributes;
import java.util.List;
import java.util.UUID;
import java.util.logging.Logger;

@Service
public class DirectoryService {

    private static final Logger log = Logger.getLogger(DirectoryService.class.getName());

    @Autowired
    LdapTemplate ldap;

    @Value("${challenge.flag}")
    String flag;

    public List<String> search(String name) {
        String filter = "(&(cn=" + name + ")(objectClass=inetOrgPerson))";
        // Execute query and filter results to only return the "cn" field (the name of the person)
        var queryResults = ldap.search("", filter, (AttributesMapper<String>) attrs -> attrs.get("cn").get().toString());
        log.info(String.format("Using filter: %s, returned: %s", filter, queryResults));
        return queryResults;
    }

    @PostConstruct
    public void initializeLDAP(){
        create("Juan", "Fernández");
        create("FlaggyMacFlag", flag);
        create("Maria", "López");
        create("Francisco", "Martínez");
        create("Jose", "Sánchez");
        create("Ana", "Pérez");
        create("Alfonso", "Gómez");
        create("Manuel", "Martín");
        create("Carmen", "Ruiz");
        create("Paula", "Hernández");
        create("Pablo", "Moreno");

        log.info("LDAP initialization complete");
    }

    private void create(String name, String surname){
        log.info(String.format("Creating user %s with surname %s", name, surname));
        Attributes attributes = new BasicAttributes();
        attributes.put(new BasicAttribute("objectClass", "inetOrgPerson"));
        attributes.put(new BasicAttribute("uid", UUID.randomUUID().toString()));
        attributes.put(new BasicAttribute("cn", name));
        attributes.put(new BasicAttribute("sn", surname));
        ldap.bind(buildDn(name), null, attributes);
    }

    private Name buildDn(String name) {
        return LdapNameBuilder.newInstance("")
                .add("cn", name)
                .build();
    }
}
